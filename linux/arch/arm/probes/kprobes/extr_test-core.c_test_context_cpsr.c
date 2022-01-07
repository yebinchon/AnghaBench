
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_FLAG_FULL_ITBLOCK ;
 int TEST_FLAG_NO_ITBLOCK ;
 int current_instruction ;
 int is_last_scenario ;
 int kprobe_test_cc_position ;
 int kprobe_test_flags ;
 int probe_should_run ;
 int test_case_is_thumb ;
 scalar_t__ test_check_cc (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long test_context_cpsr(int scenario)
{
 unsigned long cpsr;

 probe_should_run = 1;


 cpsr = (scenario & 0xf) << 28;
 cpsr |= (scenario & 0xf) << 16;
 cpsr |= (scenario & 0x1) << 27;

 if (!test_case_is_thumb) {

  int cc = current_instruction >> 28;

  probe_should_run = test_check_cc(cc, cpsr) != 0;
  if (scenario == 15)
   is_last_scenario = 1;

 } else if (kprobe_test_flags & TEST_FLAG_NO_ITBLOCK) {

  if (kprobe_test_cc_position) {
   int cc = (current_instruction >> kprobe_test_cc_position) & 0xf;
   probe_should_run = test_check_cc(cc, cpsr) != 0;
  }

  if (scenario == 15)
   is_last_scenario = 1;

 } else if (kprobe_test_flags & TEST_FLAG_FULL_ITBLOCK) {

  unsigned x = (scenario >> 4);
  unsigned cond_base = x % 7;
  unsigned mask = x / 7 + 2;

  if (mask > 0x1f) {

   cond_base = 7;
   mask = 0x4;
   if ((scenario & 0xf) == 0xf)
    is_last_scenario = 1;
  }

  cpsr |= cond_base << 13;
  cpsr |= (mask & 0x1) << 12;
  cpsr |= (mask & 0x2) << 10;
  cpsr |= (mask & 0x4) << 8;
  cpsr |= (mask & 0x8) << 23;
  cpsr |= (mask & 0x10) << 21;

  probe_should_run = test_check_cc((cpsr >> 12) & 0xf, cpsr) != 0;

 } else {

  switch (scenario) {
  case 16:
   cpsr = 0x00000800;
   probe_should_run = 0;
   break;
  case 17:
   cpsr = 0xf0007800;
   probe_should_run = 0;
   break;
  case 18:
   cpsr = 0x00009800;
   break;
  case 19:
   cpsr = 0xf0002800;
   is_last_scenario = 1;
   break;
  }
 }

 return cpsr;
}
