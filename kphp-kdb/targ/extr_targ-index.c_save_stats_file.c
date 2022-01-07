
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int g; } ;


 TYPE_1__ AdStats ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int assert (int) ;
 scalar_t__ close (int) ;
 int fprintf (int ,char*,char*) ;
 int open (char*,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;
 int write (int,int ,int) ;

int save_stats_file (char *stats_filename) {
  if (verbosity > 0) {
    fprintf (stderr, "saving global click/view statistics to %s\n", stats_filename);
  }
  int fd = open (stats_filename, O_WRONLY | O_CREAT | O_EXCL, 0644);
  if (fd < 0) {
    fprintf (stderr, "cannot open statistics file %s for writing: %m\n", stats_filename);
    return -1;
  }
  int w = write (fd, AdStats.g, sizeof (AdStats.g));
  assert (w == sizeof (AdStats.g));
  assert (close (fd) >= 0);
  return 1;
}
