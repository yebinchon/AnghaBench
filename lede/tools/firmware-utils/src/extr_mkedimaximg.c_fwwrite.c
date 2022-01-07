
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct finfo {char* name; int size; } ;
struct buf {int size; int start; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int fwrite (int ,int,int ,int *) ;
 int stderr ;
 int usage (int ) ;

__attribute__((used)) static int fwwrite(struct finfo *finfo, struct buf *buf)
{
    FILE *f;

    f = fopen(finfo->name, "w");
    if (!f) {
 fprintf(stderr, "could not open \"%s\" for writing\n", finfo->name);
 usage(EXIT_FAILURE);
    }

    buf->size = fwrite(buf->start, 1, finfo->size, f);
    if (buf->size != finfo->size) {
 fprintf(stderr, "unable to write to file \"%s\"\n", finfo->name);
 usage(EXIT_FAILURE);
    }

    fclose(f);

    return EXIT_SUCCESS;
}
