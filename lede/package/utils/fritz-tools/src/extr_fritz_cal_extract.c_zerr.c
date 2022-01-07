
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ferror (int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;

__attribute__((used)) static void zerr(int ret)
{
    switch (ret) {
    case 131:
        if (ferror(stdin))
            fputs("error reading stdin\n", stderr);
        if (ferror(stdout))
            fputs("error writing stdout\n", stderr);
        break;
    case 129:
        fputs("invalid compression level\n", stderr);
        break;
    case 132:
        fputs("invalid or incomplete deflate data\n", stderr);
        break;
    case 130:
        fputs("out of memory\n", stderr);
        break;
    case 128:
        fputs("zlib version mismatch!\n", stderr);
    }
}
