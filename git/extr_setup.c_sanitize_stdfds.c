
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int _ (char*) ;
 int close (int) ;
 int die_errno (int ) ;
 int dup (int) ;
 int open (char*,int ,int ) ;

void sanitize_stdfds(void)
{
 int fd = open("/dev/null", O_RDWR, 0);
 while (fd != -1 && fd < 2)
  fd = dup(fd);
 if (fd == -1)
  die_errno(_("open /dev/null or dup failed"));
 if (fd > 2)
  close(fd);
}
