
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int ec_clk; int ec_mask; } ;


 int SIGP_EMERGENCY_SIGNAL ;
 int SIGP_EXTERNAL_CALL ;
 int get_tod_clock_fast () ;
 scalar_t__ pcpu_running (struct pcpu*) ;
 int pcpu_sigp_retry (struct pcpu*,int,int ) ;
 scalar_t__ test_and_set_bit (int,int *) ;

__attribute__((used)) static void pcpu_ec_call(struct pcpu *pcpu, int ec_bit)
{
 int order;

 if (test_and_set_bit(ec_bit, &pcpu->ec_mask))
  return;
 order = pcpu_running(pcpu) ? SIGP_EXTERNAL_CALL : SIGP_EMERGENCY_SIGNAL;
 pcpu->ec_clk = get_tod_clock_fast();
 pcpu_sigp_retry(pcpu, order, 0);
}
