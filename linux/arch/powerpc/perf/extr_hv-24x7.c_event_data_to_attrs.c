
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_event_data {int domain; } ;
struct attribute {int dummy; } ;


 struct attribute* event_to_attr (unsigned int,struct hv_24x7_event_data*,int ,int) ;

__attribute__((used)) static int event_data_to_attrs(unsigned ix, struct attribute **attrs,
       struct hv_24x7_event_data *event, int nonce)
{
 *attrs = event_to_attr(ix, event, event->domain, nonce);
 if (!*attrs)
  return -1;

 return 0;
}
