
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct cppc_perf_fb_ctrs {int delivered; int reference; int member_0; } ;
struct cpc_desc {int cpu_id; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int cppc_get_perf_ctrs (int ,struct cppc_perf_fb_ctrs*) ;
 int scnprintf (char*,int ,char*,int ,int ) ;
 struct cpc_desc* to_cpc_desc (struct kobject*) ;

__attribute__((used)) static ssize_t show_feedback_ctrs(struct kobject *kobj,
  struct attribute *attr, char *buf)
{
 struct cpc_desc *cpc_ptr = to_cpc_desc(kobj);
 struct cppc_perf_fb_ctrs fb_ctrs = {0};
 int ret;

 ret = cppc_get_perf_ctrs(cpc_ptr->cpu_id, &fb_ctrs);
 if (ret)
  return ret;

 return scnprintf(buf, PAGE_SIZE, "ref:%llu del:%llu\n",
   fb_ctrs.reference, fb_ctrs.delivered);
}
