
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {int textconv; } ;
struct repository {int dummy; } ;
struct grep_source {int type; char* buf; size_t size; int * identifier; int path; } ;
struct diff_filespec {int dummy; } ;


 int BUG (char*) ;


 struct diff_filespec* alloc_filespec (int ) ;
 int fill_filespec (struct diff_filespec*,int *,int,int) ;
 size_t fill_textconv (struct repository*,struct userdiff_driver*,struct diff_filespec*,char**) ;
 int free_filespec (struct diff_filespec*) ;
 int grep_read_lock () ;
 int grep_read_unlock () ;
 int grep_source_clear_data (struct grep_source*) ;
 int grep_source_load (struct grep_source*) ;
 int null_oid ;

__attribute__((used)) static int fill_textconv_grep(struct repository *r,
         struct userdiff_driver *driver,
         struct grep_source *gs)
{
 struct diff_filespec *df;
 char *buf;
 size_t size;

 if (!driver || !driver->textconv)
  return grep_source_load(gs);






 df = alloc_filespec(gs->path);
 switch (gs->type) {
 case 128:
  fill_filespec(df, gs->identifier, 1, 0100644);
  break;
 case 129:
  fill_filespec(df, &null_oid, 0, 0100644);
  break;
 default:
  BUG("attempt to textconv something without a path?");
 }






 grep_read_lock();
 size = fill_textconv(r, driver, df, &buf);
 grep_read_unlock();
 free_filespec(df);
 grep_source_clear_data(gs);
 gs->buf = buf;
 gs->size = size;

 return 0;
}
