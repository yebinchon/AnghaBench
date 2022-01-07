
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_24x7_event_data {scalar_t__ remainder; int event_name_len; } ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static char *event_name(struct hv_24x7_event_data *ev, int *len)
{
 *len = be16_to_cpu(ev->event_name_len) - 2;
 return (char *)ev->remainder;
}
