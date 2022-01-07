
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int O_RDONLY ;
 int close (int) ;
 int get_fsize (int,int *) ;
 int open (char const*,int ) ;
 int read (int,unsigned char*,int) ;
 unsigned char* ztmalloc (int) ;

__attribute__((used)) static unsigned char *read_whole_file (const char *path, int *l, time_t *mtime) {
  int fd = open (path, O_RDONLY);
  if (fd < 0) {
    return ((void*)0);
  }
  *l = get_fsize (fd, mtime);
  if (*l < 0) {
    close (fd);
    return ((void*)0);
  }
  unsigned char *p = ztmalloc ((*l + 3) & -4);
  int bytes_read = read (fd, p, *l);
  close (fd);
  if (bytes_read != *l) {
    return ((void*)0);
  }
  return p;
}
