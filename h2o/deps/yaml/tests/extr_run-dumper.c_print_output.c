
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFFER_SIZE ;
 int assert (int) ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int ferror (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 size_t fwrite (char*,int,size_t,int ) ;
 int printf (char*,...) ;
 int stdout ;

int print_output(char *name, unsigned char *buffer, size_t size, int count)
{
    FILE *file;
    char data[BUFFER_SIZE];
    size_t data_size = 1;
    size_t total_size = 0;
    if (count >= 0) {
        printf("FAILED (at the document #%d)\nSOURCE:\n", count+1);
    }
    file = fopen(name, "rb");
    assert(file);
    while (data_size > 0) {
        data_size = fread(data, 1, BUFFER_SIZE, file);
        assert(!ferror(file));
        if (!data_size) break;
        assert(fwrite(data, 1, data_size, stdout) == data_size);
        total_size += data_size;
        if (feof(file)) break;
    }
    fclose(file);
    printf("#### (length: %d)\n", total_size);
    printf("OUTPUT:\n%s#### (length: %d)\n", buffer, size);
    return 0;
}
