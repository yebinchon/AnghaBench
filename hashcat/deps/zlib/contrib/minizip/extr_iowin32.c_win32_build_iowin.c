
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * voidpf ;
struct TYPE_2__ {scalar_t__ error; int * hf; } ;
typedef TYPE_1__ WIN32FILE_IOWIN ;
typedef int * HANDLE ;


 int CloseHandle (int *) ;
 int * INVALID_HANDLE_VALUE ;
 int * malloc (int) ;

__attribute__((used)) static voidpf win32_build_iowin(HANDLE hFile)
{
    voidpf ret=((void*)0);

    if ((hFile != ((void*)0)) && (hFile != INVALID_HANDLE_VALUE))
    {
        WIN32FILE_IOWIN w32fiow;
        w32fiow.hf = hFile;
        w32fiow.error = 0;
        ret = malloc(sizeof(WIN32FILE_IOWIN));

        if (ret==((void*)0))
            CloseHandle(hFile);
        else
            *((WIN32FILE_IOWIN*)ret) = w32fiow;
    }
    return ret;
}
