
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_C ;
 int exec_opb (long,long,int ) ;
 int exec_opl (long,long,int ) ;
 int exec_opq (long,long,int ) ;
 int exec_opw (long,long,int ) ;
 long i2l (long) ;

void exec_op(long s0, long s1)
{
    s0 = i2l(s0);
    s1 = i2l(s1);

    exec_opq(s0, s1, 0);

    exec_opl(s0, s1, 0);
    exec_opw(s0, s1, 0);
    exec_opb(s0, s1, 0);
}
