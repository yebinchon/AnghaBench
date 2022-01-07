
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct tempfile {scalar_t__ fd; TYPE_1__ filename; } ;


 int activate_tempfile (struct tempfile*) ;
 int deactivate_tempfile (struct tempfile*) ;
 scalar_t__ git_mkstemps_mode (int ,int,int) ;
 struct tempfile* new_tempfile () ;
 int strbuf_add_absolute_path (TYPE_1__*,char const*) ;

struct tempfile *mks_tempfile_sm(const char *filename_template, int suffixlen, int mode)
{
 struct tempfile *tempfile = new_tempfile();

 strbuf_add_absolute_path(&tempfile->filename, filename_template);
 tempfile->fd = git_mkstemps_mode(tempfile->filename.buf, suffixlen, mode);
 if (tempfile->fd < 0) {
  deactivate_tempfile(tempfile);
  return ((void*)0);
 }
 activate_tempfile(tempfile);
 return tempfile;
}
