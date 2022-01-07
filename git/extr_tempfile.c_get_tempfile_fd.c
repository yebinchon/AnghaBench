
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int fd; } ;


 int BUG (char*) ;
 int is_tempfile_active (struct tempfile*) ;

int get_tempfile_fd(struct tempfile *tempfile)
{
 if (!is_tempfile_active(tempfile))
  BUG("get_tempfile_fd() called for inactive object");
 return tempfile->fd;
}
