
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int FILE ;


 int EOF ;
 int UINT64_MAX ;
 int fgetc (int *) ;

__attribute__((used)) static uint64_t read_int(FILE *fp, size_t nbytes)
{
    uint64_t v = 0;
    size_t i;
    int ch;
    for (i = 0; i != nbytes; ++i) {
        if ((ch = fgetc(fp)) == EOF)
            return UINT64_MAX;
        v = (v << 8) | ch;
    }
    return v;
}
