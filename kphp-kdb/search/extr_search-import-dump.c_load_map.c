
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_SIZE ;
 int Map ;
 int O_RDONLY ;
 int close (scalar_t__) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 char* groups_fname ;
 scalar_t__ map_fd ;
 scalar_t__ map_size ;
 scalar_t__ open (char*,int ) ;
 scalar_t__ read (scalar_t__,int ,int ) ;
 int stderr ;
 scalar_t__ verbosity ;

void load_map (int force) {
  if (!groups_fname) {
    if (!force) {
      fprintf (stderr, "warning: no map file specified\n");
    } else {
      fprintf (stderr, "fatal: no map file specified\n");
      exit (2);
    }
    return;
  }
  map_fd = open (groups_fname, O_RDONLY);
  if (map_fd < 0) {
    fprintf (stderr, "cannot open map file %s: %m", groups_fname);
    if (force) {
      exit (2);
    }
    return;
  }
  map_size = read (map_fd, Map, MAP_SIZE);
  close (map_fd);
  if (map_size < 0) {
    map_size = 0;
  }
  if (verbosity > 0) {
    fprintf (stderr, "read %d bytes from map file %s\n", map_size, groups_fname);
  }
}
