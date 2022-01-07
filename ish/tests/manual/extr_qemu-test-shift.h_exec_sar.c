
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_C ;
 int exec_opb (long,long,int ) ;
 int exec_opl (long,long,long,int ) ;
 int exec_opq (long,long,long,int ) ;
 int exec_opw (long,long,long,int ) ;
 long i2l (long) ;

void exec_op(long s2, long s0, long s1)
{
    s2 = i2l(s2);
    s0 = i2l(s0);

    exec_opq(s2, s0, s1, 0);

    exec_opl(s2, s0, s1, 0);



    exec_opw(s2, s0, s1, 0);


    exec_opb(s0, s1, 0);
}
