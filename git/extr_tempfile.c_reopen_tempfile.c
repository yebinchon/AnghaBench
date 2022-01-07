
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {scalar_t__ fd; TYPE_1__ filename; } ;


 int BUG (char*) ;
 int O_TRUNC ;
 int O_WRONLY ;
 int is_tempfile_active (struct tempfile*) ;
 scalar_t__ open (int ,int) ;

int reopen_tempfile(struct tempfile *tempfile)
{
 if (!is_tempfile_active(tempfile))
  BUG("reopen_tempfile called for an inactive object");
 if (0 <= tempfile->fd)
  BUG("reopen_tempfile called for an open object");
 tempfile->fd = open(tempfile->filename.buf, O_WRONLY|O_TRUNC);
 return tempfile->fd;
}
