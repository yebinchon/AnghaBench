
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;


 int Error (char*) ;
 int FreeMemory (int *) ;
 scalar_t__ MemorySize (int *) ;
 int c_active_windings ;
 int c_windingmemory ;
 int numthreads ;

void FreeWinding (winding_t *w)
{
 if (*(unsigned *)w == 0xdeaddead)
  Error ("FreeWinding: freed a freed winding");

 if (numthreads == 1)
 {
  c_active_windings--;
  c_windingmemory -= MemorySize(w);
 }

 *(unsigned *)w = 0xdeaddead;

 FreeMemory(w);
}
