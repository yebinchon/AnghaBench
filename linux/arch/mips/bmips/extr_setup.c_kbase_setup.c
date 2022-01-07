
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BMIPS_GET_CBR () ;
 scalar_t__ BMIPS_RELO_VECTOR_CONTROL_1 ;
 int RELO_NORMAL_VEC ;
 int __raw_writel (int,scalar_t__) ;
 int ebase ;
 int kbase ;

__attribute__((used)) static void kbase_setup(void)
{
 __raw_writel(kbase | RELO_NORMAL_VEC,
       BMIPS_GET_CBR() + BMIPS_RELO_VECTOR_CONTROL_1);
 ebase = kbase;
}
