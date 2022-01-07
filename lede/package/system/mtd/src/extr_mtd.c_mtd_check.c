
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buf ;
 int close (int) ;
 int erasesize ;
 int free (char*) ;
 scalar_t__ malloc (int ) ;
 int mtd_check_open (char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int mtd_check(const char *mtd)
{
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
  if (fd < 0)
   return 0;

  if (!buf)
   buf = malloc(erasesize);

  close(fd);
  mtd = next;
 } while (next);

 if (str)
  free(str);

 return 1;
}
