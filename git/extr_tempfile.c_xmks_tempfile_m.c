
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int dummy; } ;
struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int die_errno (char*,int ) ;
 struct tempfile* mks_tempfile_m (int ,int) ;
 int strbuf_add_absolute_path (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

struct tempfile *xmks_tempfile_m(const char *filename_template, int mode)
{
 struct tempfile *tempfile;
 struct strbuf full_template = STRBUF_INIT;

 strbuf_add_absolute_path(&full_template, filename_template);
 tempfile = mks_tempfile_m(full_template.buf, mode);
 if (!tempfile)
  die_errno("Unable to create temporary file '%s'",
     full_template.buf);

 strbuf_release(&full_template);
 return tempfile;
}
