
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;
typedef int FILE ;


 int * FS_FileForHandle (int ) ;
 long FS_fplength (int *) ;

long FS_filelength(fileHandle_t f)
{
 FILE *h;

 h = FS_FileForHandle(f);

 if(h == ((void*)0))
  return -1;
 else
  return FS_fplength(h);
}
