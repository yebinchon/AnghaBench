
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_event_data {int dummy; } ;
struct attribute {int dummy; } ;


 struct attribute* device_str_attr_create (char*,int,int,char*,int) ;
 char* event_desc (struct hv_24x7_event_data*,int*) ;
 char* event_name (struct hv_24x7_event_data*,int*) ;

__attribute__((used)) static struct attribute *event_to_desc_attr(struct hv_24x7_event_data *event,
         int nonce)
{
 int nl, dl;
 char *name = event_name(event, &nl);
 char *desc = event_desc(event, &dl);


 if (!dl)
  return ((void*)0);

 return device_str_attr_create(name, nl, nonce, desc, dl);
}
