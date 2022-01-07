
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ISzAllocPtr ;


 int MyFree (void*) ;
 int UNUSED_VAR (int ) ;

__attribute__((used)) static void SzFree(ISzAllocPtr p, void *address) { UNUSED_VAR(p); MyFree(address); }
