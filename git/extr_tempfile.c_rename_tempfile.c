
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {TYPE_1__ filename; } ;


 int BUG (char*) ;
 scalar_t__ close_tempfile_gently (struct tempfile*) ;
 int deactivate_tempfile (struct tempfile*) ;
 int delete_tempfile (struct tempfile**) ;
 int errno ;
 int is_tempfile_active (struct tempfile*) ;
 scalar_t__ rename (int ,char const*) ;

int rename_tempfile(struct tempfile **tempfile_p, const char *path)
{
 struct tempfile *tempfile = *tempfile_p;

 if (!is_tempfile_active(tempfile))
  BUG("rename_tempfile called for inactive object");

 if (close_tempfile_gently(tempfile)) {
  delete_tempfile(tempfile_p);
  return -1;
 }

 if (rename(tempfile->filename.buf, path)) {
  int save_errno = errno;
  delete_tempfile(tempfile_p);
  errno = save_errno;
  return -1;
 }

 deactivate_tempfile(tempfile);
 *tempfile_p = ((void*)0);
 return 0;
}
