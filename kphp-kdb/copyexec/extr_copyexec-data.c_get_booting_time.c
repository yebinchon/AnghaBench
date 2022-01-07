
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFFSIZE ;
 char* Buff ;
 int O_RDONLY ;
 int exit (int) ;
 int fd_close (int*) ;
 int kprintf (char*,...) ;
 int open (char*,int ) ;
 int read (int,char*,int) ;
 int sscanf (char*,char*,int*) ;
 char* strstr (char*,char*) ;
 int vkprintf (int,char*,...) ;

int get_booting_time (void) {
  int fd = open ("/proc/stat", O_RDONLY);
  if (fd < 0) {
    kprintf ("get_booting_time: open (\"/proc/stat\", O_RDONLY) failed. %m\n");
    exit (1);
  }
  Buff[0] = '\n';
  int s = read (fd, Buff + 1, BUFFSIZE - 1);
  if (s < 0) {
    fd_close (&fd);
    kprintf ("get_booting_time: read failed. %m\n");
    exit (1);
  }
  fd_close (&fd);
  if (s == BUFFSIZE - 1) {
    kprintf ("get_booting_time: BUFFSIZE (%d) too small.\n", BUFFSIZE);
    exit (1);
  }
  Buff[s] = 0;
  char *p;
  p = Buff;
  do {
    p = strstr (p, "\nbtime");
    if (p == ((void*)0)) {
      vkprintf (1, "%s\n", Buff);
      kprintf ("get_booting_time: btime substring didn't find.\n");
      exit (1);
    }
    int booting_time;
    if (sscanf (p + 6, "%d", &booting_time) == 1) {
      vkprintf (2, "booting time is %d.\n", booting_time);
      return booting_time;
    }
    p += 6;
  } while (1);
  return 0;
}
