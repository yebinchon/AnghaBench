
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int codegen_scope ;


 scalar_t__ dispatch (int *,scalar_t__) ;

__attribute__((used)) static void
dispatch_linked(codegen_scope *s, uint16_t pos)
{
  if (pos==0) return;
  for (;;) {
    pos = dispatch(s, pos);
    if (pos==0) break;
  }
}
