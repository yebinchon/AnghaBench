
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* INFO_WS_READY_FOR_CONN ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void
set_ready_state (void)
{
  fprintf (stderr, "\33[2K\r");
  fprintf (stderr, "%s\n", INFO_WS_READY_FOR_CONN);
}
