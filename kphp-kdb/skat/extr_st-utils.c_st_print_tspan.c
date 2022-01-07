
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

void st_print_tspan (int sec) {
  if (sec < 60) {
    fprintf (stderr, "%d", sec);
  } else if (sec < 3600) {
    int minutes = sec / 60;
    fprintf (stderr, "%dm", minutes);
      fprintf (stderr, "%ds", sec % 60);
  } else if (sec < 86400) {
    int hours = sec / 3600;
    fprintf (stderr, "%dh", hours);
      fprintf (stderr, "%dm", (sec % 3600) / 60);
  } else if (sec < 31536000) {
    int days = sec / 86400;
    fprintf (stderr, "%dd", days);
      fprintf (stderr, "%dh", (sec % 86400) / 3600);
  } else {
    fprintf (stderr, ">year");
  }
}
