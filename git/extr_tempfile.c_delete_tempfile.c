
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {TYPE_1__ filename; } ;


 int close_tempfile_gently (struct tempfile*) ;
 int deactivate_tempfile (struct tempfile*) ;
 int is_tempfile_active (struct tempfile*) ;
 int unlink_or_warn (int ) ;

void delete_tempfile(struct tempfile **tempfile_p)
{
 struct tempfile *tempfile = *tempfile_p;

 if (!is_tempfile_active(tempfile))
  return;

 close_tempfile_gently(tempfile);
 unlink_or_warn(tempfile->filename.buf);
 deactivate_tempfile(tempfile);
 *tempfile_p = ((void*)0);
}
