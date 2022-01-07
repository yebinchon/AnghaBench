
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int FATAL (char*,int ) ;
 int F_OK ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_ISFIFO (int ) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 scalar_t__ access (char const*,int ) ;
 int errno ;
 scalar_t__ mkfifo (char const*,int) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (int ) ;

int
ws_setfifo (const char *pipename)
{
  struct stat fistat;
  const char *f = pipename;

  if (access (f, F_OK) == 0)
    return 0;

  if (mkfifo (f, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH) < 0)
    FATAL ("Unable to set fifo: %s.", strerror (errno));
  if (stat (f, &fistat) < 0)
    FATAL ("Unable to stat fifo: %s.", strerror (errno));
  if (!S_ISFIFO (fistat.st_mode))
    FATAL ("pipe is not a fifo: %s.", strerror (errno));

  return 0;
}
