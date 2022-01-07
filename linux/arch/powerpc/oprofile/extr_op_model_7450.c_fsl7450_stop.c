
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mb () ;
 scalar_t__ oprofile_running ;
 int pmc_stop_ctrs () ;

__attribute__((used)) static void fsl7450_stop(void)
{

 pmc_stop_ctrs();

 oprofile_running = 0;

 mb();
}
