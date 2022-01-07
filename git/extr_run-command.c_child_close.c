
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHILD_ERR_CLOSE ;
 int child_die (int ) ;
 scalar_t__ close (int) ;

__attribute__((used)) static void child_close(int fd)
{
 if (close(fd))
  child_die(CHILD_ERR_CLOSE);
}
