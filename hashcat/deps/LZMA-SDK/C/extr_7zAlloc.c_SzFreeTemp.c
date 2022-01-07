
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,void*) ;
 int UNUSED_VAR (int ) ;
 int fprintf (int ,char*,int) ;
 int free (void*) ;
 int g_allocCountTemp ;
 int stderr ;

void SzFreeTemp(ISzAllocPtr p, void *address)
{
  UNUSED_VAR(p);
  free(address);
}
