
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 void* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int SEEK_END ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ lseek (int,int ,int ) ;
 void* mmap (int *,scalar_t__,int,int ,int,int ) ;
 int open (char const*,int ) ;

__attribute__((used)) static void map_input(const char *name, void **addr, size_t *len, int prot)
{
 off_t tmp_len;

 int fd = open(name, O_RDONLY);
 if (fd == -1)
  err(1, "%s", name);

 tmp_len = lseek(fd, 0, SEEK_END);
 if (tmp_len == (off_t)-1)
  err(1, "lseek");
 *len = (size_t)tmp_len;

 *addr = mmap(((void*)0), tmp_len, prot, MAP_PRIVATE, fd, 0);
 if (*addr == MAP_FAILED)
  err(1, "mmap");

 close(fd);
}
