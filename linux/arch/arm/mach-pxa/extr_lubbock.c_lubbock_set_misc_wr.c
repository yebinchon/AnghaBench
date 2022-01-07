
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_multiple ) (TYPE_1__*,unsigned long*,unsigned long*) ;} ;


 TYPE_1__* lubbock_misc_wr_gc ;
 int stub1 (TYPE_1__*,unsigned long*,unsigned long*) ;

__attribute__((used)) static void lubbock_set_misc_wr(unsigned int mask, unsigned int set)
{
 unsigned long m = mask, v = set;
 lubbock_misc_wr_gc->set_multiple(lubbock_misc_wr_gc, &m, &v);
}
