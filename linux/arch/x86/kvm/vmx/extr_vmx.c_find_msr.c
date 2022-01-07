
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmx_msrs {unsigned int nr; TYPE_1__* val; } ;
struct TYPE_2__ {unsigned int index; } ;


 int ENOENT ;

__attribute__((used)) static int find_msr(struct vmx_msrs *m, unsigned int msr)
{
 unsigned int i;

 for (i = 0; i < m->nr; ++i) {
  if (m->val[i].index == msr)
   return i;
 }
 return -ENOENT;
}
