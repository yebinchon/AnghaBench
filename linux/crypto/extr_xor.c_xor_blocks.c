
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* do_5 ) (unsigned int,void*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;int (* do_4 ) (unsigned int,void*,unsigned long*,unsigned long*,unsigned long*) ;int (* do_3 ) (unsigned int,void*,unsigned long*,unsigned long*) ;int (* do_2 ) (unsigned int,void*,unsigned long*) ;} ;


 TYPE_1__* active_template ;
 int stub1 (unsigned int,void*,unsigned long*) ;
 int stub2 (unsigned int,void*,unsigned long*,unsigned long*) ;
 int stub3 (unsigned int,void*,unsigned long*,unsigned long*,unsigned long*) ;
 int stub4 (unsigned int,void*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;

void
xor_blocks(unsigned int src_count, unsigned int bytes, void *dest, void **srcs)
{
 unsigned long *p1, *p2, *p3, *p4;

 p1 = (unsigned long *) srcs[0];
 if (src_count == 1) {
  active_template->do_2(bytes, dest, p1);
  return;
 }

 p2 = (unsigned long *) srcs[1];
 if (src_count == 2) {
  active_template->do_3(bytes, dest, p1, p2);
  return;
 }

 p3 = (unsigned long *) srcs[2];
 if (src_count == 3) {
  active_template->do_4(bytes, dest, p1, p2, p3);
  return;
 }

 p4 = (unsigned long *) srcs[3];
 active_template->do_5(bytes, dest, p1, p2, p3, p4);
}
