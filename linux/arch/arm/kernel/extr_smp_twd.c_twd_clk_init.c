
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ERR (int ) ;
 int clk_notifier_register (int ,int *) ;
 scalar_t__ raw_cpu_ptr (scalar_t__) ;
 int twd_clk ;
 int twd_clk_nb ;
 scalar_t__ twd_evt ;

__attribute__((used)) static int twd_clk_init(void)
{
 if (twd_evt && raw_cpu_ptr(twd_evt) && !IS_ERR(twd_clk))
  return clk_notifier_register(twd_clk, &twd_clk_nb);

 return 0;
}
