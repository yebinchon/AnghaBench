
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LinkedMem ;


 int CloseHandle (int *) ;
 int UnmapViewOfFile (int *) ;
 int * hMapObject ;
 int * lm ;
 int munmap (int *,int) ;

void mumble_unlink()
{
 if(!lm)
  return;





 munmap(lm, sizeof(LinkedMem));

 lm = ((void*)0);
}
