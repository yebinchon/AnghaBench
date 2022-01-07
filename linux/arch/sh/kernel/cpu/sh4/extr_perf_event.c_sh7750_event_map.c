
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sh7750_general_events ;

__attribute__((used)) static int sh7750_event_map(int event)
{
 return sh7750_general_events[event];
}
