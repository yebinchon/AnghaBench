
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef int FILE ;


 int * fopen (char const*,char*) ;

int FS_FOpenFileRead( const char *filename, FILE **file, qboolean uniqueFILE )
{
 *file = fopen(filename, "rb");
 return (*file != ((void*)0));
}
