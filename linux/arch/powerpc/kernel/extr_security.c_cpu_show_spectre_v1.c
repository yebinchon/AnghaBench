
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_buf {int len; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int SEC_FTR_BNDS_CHK_SPEC_BAR ;
 int SEC_FTR_SPEC_BAR_ORI31 ;
 scalar_t__ barrier_nospec_enabled ;
 scalar_t__ security_ftr_enabled (int ) ;
 int seq_buf_init (struct seq_buf*,char*,scalar_t__) ;
 int seq_buf_printf (struct seq_buf*,char*) ;

ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct seq_buf s;

 seq_buf_init(&s, buf, PAGE_SIZE - 1);

 if (security_ftr_enabled(SEC_FTR_BNDS_CHK_SPEC_BAR)) {
  if (barrier_nospec_enabled)
   seq_buf_printf(&s, "Mitigation: __user pointer sanitization");
  else
   seq_buf_printf(&s, "Vulnerable");

  if (security_ftr_enabled(SEC_FTR_SPEC_BAR_ORI31))
   seq_buf_printf(&s, ", ori31 speculation barrier enabled");

  seq_buf_printf(&s, "\n");
 } else
  seq_buf_printf(&s, "Not affected\n");

 return s.len;
}
