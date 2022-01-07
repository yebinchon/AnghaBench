
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_event_data {int event_group_record_offs; int event_counter_offs; } ;
typedef int buf ;


 int GFP_KERNEL ;


 scalar_t__ be16_to_cpu (int ) ;
 char* kasprintf (int ,char*,char const*,scalar_t__,char const*,char const*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static char *event_fmt(struct hv_24x7_event_data *event, unsigned domain)
{
 const char *sindex;
 const char *lpar;
 const char *domain_str;
 char buf[8];

 switch (domain) {
 case 129:
  snprintf(buf, sizeof(buf), "%d", domain);
  domain_str = buf;
  lpar = "0x0";
  sindex = "chip";
  break;
 case 128:
  domain_str = "?";
  lpar = "0x0";
  sindex = "core";
  break;
 default:
  domain_str = "?";
  lpar = "?";
  sindex = "vcpu";
 }

 return kasprintf(GFP_KERNEL,
   "domain=%s,offset=0x%x,%s=?,lpar=%s",
   domain_str,
   be16_to_cpu(event->event_counter_offs) +
    be16_to_cpu(event->event_group_record_offs),
   sindex,
   lpar);
}
