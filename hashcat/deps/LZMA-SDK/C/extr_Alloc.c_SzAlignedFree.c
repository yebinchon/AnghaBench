
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 int MyFree (void*) ;
 int UNUSED_VAR (int ) ;
 int free (void*) ;

__attribute__((used)) static void SzAlignedFree(ISzAllocPtr pp, void *address)
{
  UNUSED_VAR(pp);

  if (address)
    MyFree(((void **)address)[-1]);



}
