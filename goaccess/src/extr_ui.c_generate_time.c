
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int localtime (int *) ;
 int now_tm ;
 int time (int *) ;
 int timestamp ;

void
generate_time (void)
{
  timestamp = time (((void*)0));
  now_tm = localtime (&timestamp);
}
