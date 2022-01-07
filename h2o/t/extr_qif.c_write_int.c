
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t uint64_t ;
typedef int FILE ;


 int fputc (int ,int *) ;

__attribute__((used)) static void write_int(FILE *fp, uint64_t v, size_t nbytes)
{
    size_t i;
    for (i = 0; i != nbytes; ++i)
        fputc((uint8_t)(v >> ((nbytes - i - 1) * 8)), fp);
}
