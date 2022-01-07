
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int TMEM_SIZE ;
 int close (int) ;
 int open (char*,int ) ;
 scalar_t__ read (int,char*,int) ;
 int snprintf (char*,int,char*) ;

int get_cpu_total (unsigned long long *cpu_total) {

  static char mem[10000];
  snprintf (mem, 10000, "/proc/stat");
  int fd = open (mem, O_RDONLY);

  if (fd == -1) {
    return 0;
  }

  int size = (int)read (fd, mem, 10000 - 1);
  if (size <= 0) {
    close (fd);
    return 0;
  }

  unsigned long long sum = 0, cur = 0;
  int i;
  for (i = 0; i < size; i++) {
    int c = mem[i];
    if (c >= '0' && c <= '9') {
      cur = cur * 10 + (unsigned long long)c - '0';
    } else {
      sum += cur;
      cur = 0;
      if (c == '\n') {
        break;
      }
    }
  }

  *cpu_total = sum;

  close (fd);
  return 1;

}
