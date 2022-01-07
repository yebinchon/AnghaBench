
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct access {int have; TYPE_1__* list; } ;
typedef int off_t ;
struct TYPE_2__ {int out; } ;
typedef int FILE ;


 int CHUNK ;
 int SPAN ;



 int build_index (int *,int ,struct access**) ;
 int extract (int *,struct access*,int,unsigned char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free_index (struct access*) ;
 int fwrite (unsigned char*,int,int,int ) ;
 int stderr ;
 int stdout ;

int main(int argc, char **argv)
{
    int len;
    off_t offset;
    FILE *in;
    struct access *index = ((void*)0);
    unsigned char buf[CHUNK];


    if (argc != 2) {
        fprintf(stderr, "usage: zran file.gz\n");
        return 1;
    }
    in = fopen(argv[1], "rb");
    if (in == ((void*)0)) {
        fprintf(stderr, "zran: could not open %s for reading\n", argv[1]);
        return 1;
    }


    len = build_index(in, SPAN, &index);
    if (len < 0) {
        fclose(in);
        switch (len) {
        case 128:
            fprintf(stderr, "zran: out of memory\n");
            break;
        case 130:
            fprintf(stderr, "zran: compressed data error in %s\n", argv[1]);
            break;
        case 129:
            fprintf(stderr, "zran: read error on %s\n", argv[1]);
            break;
        default:
            fprintf(stderr, "zran: error %d while building index\n", len);
        }
        return 1;
    }
    fprintf(stderr, "zran: built index with %d access points\n", len);


    offset = (index->list[index->have - 1].out << 1) / 3;
    len = extract(in, index, offset, buf, CHUNK);
    if (len < 0)
        fprintf(stderr, "zran: extraction failed: %s error\n",
                len == 128 ? "out of memory" : "input corrupted");
    else {
        fwrite(buf, 1, len, stdout);
        fprintf(stderr, "zran: extracted %d bytes at %llu\n", len, offset);
    }


    free_index(index);
    fclose(in);
    return 0;
}
