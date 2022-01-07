
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_qsi_info_block {int dummy; } ;


 int debug_sprintf_event (int ,int,char*) ;
 unsigned long freq_to_sample_rate (struct hws_qsi_info_block*,unsigned long) ;
 unsigned long hw_limit_rate (struct hws_qsi_info_block*,unsigned long) ;
 scalar_t__ sample_rate_to_freq (struct hws_qsi_info_block*,unsigned long) ;
 int sfdbg ;
 scalar_t__ sysctl_perf_event_sample_rate ;

__attribute__((used)) static unsigned long getrate(bool freq, unsigned long sample,
        struct hws_qsi_info_block *si)
{
 unsigned long rate;

 if (freq) {
  rate = freq_to_sample_rate(si, sample);
  rate = hw_limit_rate(si, rate);
 } else {




  rate = hw_limit_rate(si, sample);







  if (sample_rate_to_freq(si, rate) >
      sysctl_perf_event_sample_rate) {
   debug_sprintf_event(sfdbg, 1,
         "Sampling rate exceeds maximum "
         "perf sample rate\n");
   rate = 0;
  }
 }
 return rate;
}
