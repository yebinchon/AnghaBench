
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_MAP_USERS ;
 long long Map ;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int* UMap ;
 int assert (int) ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 long long malloc (long) ;
 char* map_filename ;
 long map_fsize ;
 int open (char*,int ) ;
 int read (int,long long,int) ;
 int stderr ;
 scalar_t__ verbosity ;

int load_map (void) {
  int map_fd = open (map_filename, O_RDONLY);
  if (map_fd < 0) {
    fprintf (stderr, "cannot open user names file %s: %m\n", map_filename);
    exit (1);
  }
  map_fsize = lseek (map_fd, 0, SEEK_END);
  assert (map_fsize >= 0 && map_fsize == (long) map_fsize);
  assert (map_fsize >= MAX_MAP_USERS * 4);
  Map = malloc (map_fsize);
  assert (Map);
  UMap = (unsigned *) Map;

  assert (lseek (map_fd, 0, SEEK_SET) == 0);
  long long rd = 0;
  while (rd < map_fsize) {
    int s = map_fsize - rd < (1 << 30) ? map_fsize - rd : (1 << 30);
    assert (read (map_fd, Map + rd, s) == s);
    rd += s;
  }
  close (map_fd);

  int i;
  assert (UMap[0] == MAX_MAP_USERS * 4);
  for (i = 1; i < MAX_MAP_USERS; i++) {
    assert (UMap[i-1] <= UMap[i]);
  }
  assert (UMap[MAX_MAP_USERS-1] <= map_fsize);
  if (verbosity > 0) {
    fprintf (stderr, "successfully loaded user names file %s, size %lld\n", map_filename, map_fsize);
  }

  return 0;
}
