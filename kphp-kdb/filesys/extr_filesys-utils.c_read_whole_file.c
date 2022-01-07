
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int read (int,unsigned char*,int) ;
 int vkprintf (int,char*,...) ;
 unsigned char* zmalloc (int) ;

__attribute__((used)) static unsigned char *read_whole_file (const char *path, int l) {
  int fd = open (path, O_RDONLY);
  if (fd < 0) {
    vkprintf (1, "Couldn't open %s for reading. %m\n", path);
    return ((void*)0);
  }
  unsigned char *p = zmalloc (l > 0 ? l : 1);
  int bytes_read = read (fd, p, l);
  close (fd);
  if (bytes_read != l) {
    vkprintf (1, "read %d bytes of %d from %s. %m\n", bytes_read, l, path);
    return ((void*)0);
  }
  return p;
}
