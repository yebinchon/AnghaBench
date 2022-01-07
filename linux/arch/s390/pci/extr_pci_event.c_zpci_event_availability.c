
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __zpci_event_availability (void*) ;
 scalar_t__ zpci_is_enabled () ;

void zpci_event_availability(void *data)
{
 if (zpci_is_enabled())
  __zpci_event_availability(data);
}
