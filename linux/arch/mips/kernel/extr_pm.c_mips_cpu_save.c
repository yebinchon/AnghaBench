
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int lose_fpu (int) ;
 int save_dsp (int ) ;

__attribute__((used)) static int mips_cpu_save(void)
{

 lose_fpu(1);


 save_dsp(current);

 return 0;
}
