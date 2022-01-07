
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {int state_num; int* freq_table; int* trans_table; int max_state; } ;
struct cpufreq_policy {scalar_t__ fast_switch_enabled; struct cpufreq_stats* stats; } ;
typedef int ssize_t ;


 int EFBIG ;
 int PAGE_SIZE ;
 int pr_warn_once (char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static ssize_t show_trans_table(struct cpufreq_policy *policy, char *buf)
{
 struct cpufreq_stats *stats = policy->stats;
 ssize_t len = 0;
 int i, j;

 if (policy->fast_switch_enabled)
  return 0;

 len += snprintf(buf + len, PAGE_SIZE - len, "   From  :    To\n");
 len += snprintf(buf + len, PAGE_SIZE - len, "         : ");
 for (i = 0; i < stats->state_num; i++) {
  if (len >= PAGE_SIZE)
   break;
  len += snprintf(buf + len, PAGE_SIZE - len, "%9u ",
    stats->freq_table[i]);
 }
 if (len >= PAGE_SIZE)
  return PAGE_SIZE;

 len += snprintf(buf + len, PAGE_SIZE - len, "\n");

 for (i = 0; i < stats->state_num; i++) {
  if (len >= PAGE_SIZE)
   break;

  len += snprintf(buf + len, PAGE_SIZE - len, "%9u: ",
    stats->freq_table[i]);

  for (j = 0; j < stats->state_num; j++) {
   if (len >= PAGE_SIZE)
    break;
   len += snprintf(buf + len, PAGE_SIZE - len, "%9u ",
     stats->trans_table[i*stats->max_state+j]);
  }
  if (len >= PAGE_SIZE)
   break;
  len += snprintf(buf + len, PAGE_SIZE - len, "\n");
 }

 if (len >= PAGE_SIZE) {
  pr_warn_once("cpufreq transition table exceeds PAGE_SIZE. Disabling\n");
  return -EFBIG;
 }
 return len;
}
