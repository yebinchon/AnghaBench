
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_event_data {int dummy; } ;
struct attribute {int dummy; } ;


 int GFP_KERNEL ;
 struct attribute* device_str_attr_create_ (char*,char*) ;
 int domain_is_valid (unsigned int) ;
 char* event_fmt (struct hv_24x7_event_data*,unsigned int) ;
 char* event_name (struct hv_24x7_event_data*,int*) ;
 char* kasprintf (int ,char*,int,char*,...) ;
 int kfree (char*) ;
 int pr_warn (char*,unsigned int,unsigned int) ;

__attribute__((used)) static struct attribute *event_to_attr(unsigned ix,
           struct hv_24x7_event_data *event,
           unsigned domain,
           int nonce)
{
 int event_name_len;
 char *ev_name, *a_ev_name, *val;
 struct attribute *attr;

 if (!domain_is_valid(domain)) {
  pr_warn("catalog event %u has invalid domain %u\n",
    ix, domain);
  return ((void*)0);
 }

 val = event_fmt(event, domain);
 if (!val)
  return ((void*)0);

 ev_name = event_name(event, &event_name_len);
 if (!nonce)
  a_ev_name = kasprintf(GFP_KERNEL, "%.*s",
    (int)event_name_len, ev_name);
 else
  a_ev_name = kasprintf(GFP_KERNEL, "%.*s__%d",
    (int)event_name_len, ev_name, nonce);

 if (!a_ev_name)
  goto out_val;

 attr = device_str_attr_create_(a_ev_name, val);
 if (!attr)
  goto out_name;

 return attr;
out_name:
 kfree(a_ev_name);
out_val:
 kfree(val);
 return ((void*)0);
}
