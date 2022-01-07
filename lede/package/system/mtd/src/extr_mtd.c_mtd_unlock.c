
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erase_info_user {int length; scalar_t__ start; } ;


 int MEMUNLOCK ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int ioctl (int,int ,struct erase_info_user*) ;
 int mtd_check_open (char const*) ;
 int mtdsize ;
 int quiet ;
 int stderr ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
mtd_unlock(const char *mtd)
{
 struct erase_info_user mtdLockInfo;
 char *next = ((void*)0);
 char *str = ((void*)0);
 int fd;

 if (strchr(mtd, ':')) {
  str = strdup(mtd);
  mtd = str;
 }

 do {
  next = strchr(mtd, ':');
  if (next) {
   *next = 0;
   next++;
  }

  fd = mtd_check_open(mtd);
  if(fd < 0) {
   fprintf(stderr, "Could not open mtd device: %s\n", mtd);
   exit(1);
  }

  if (quiet < 2)
   fprintf(stderr, "Unlocking %s ...\n", mtd);

  mtdLockInfo.start = 0;
  mtdLockInfo.length = mtdsize;
  ioctl(fd, MEMUNLOCK, &mtdLockInfo);
  close(fd);
  mtd = next;
 } while (next);

 if (str)
  free(str);

 return 0;
}
