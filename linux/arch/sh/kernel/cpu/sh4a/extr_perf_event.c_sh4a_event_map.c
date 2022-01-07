
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* sh4a_general_events ;

__attribute__((used)) static int sh4a_event_map(int event)
{
 return sh4a_general_events[event];
}
