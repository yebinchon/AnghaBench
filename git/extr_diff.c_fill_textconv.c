
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userdiff_driver {scalar_t__ textconv_cache; int textconv; } ;
struct repository {int dummy; } ;
struct diff_filespec {char* data; size_t size; int oid; scalar_t__ oid_valid; } ;


 int BUG (char*) ;
 int DIFF_FILE_VALID (struct diff_filespec*) ;
 int die (char*) ;
 scalar_t__ diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;
 char* notes_cache_get (scalar_t__,int *,size_t*) ;
 int notes_cache_put (scalar_t__,int *,char*,size_t) ;
 int notes_cache_write (scalar_t__) ;
 char* run_textconv (struct repository*,int ,struct diff_filespec*,size_t*) ;

size_t fill_textconv(struct repository *r,
       struct userdiff_driver *driver,
       struct diff_filespec *df,
       char **outbuf)
{
 size_t size;

 if (!driver) {
  if (!DIFF_FILE_VALID(df)) {
   *outbuf = "";
   return 0;
  }
  if (diff_populate_filespec(r, df, 0))
   die("unable to read files to diff");
  *outbuf = df->data;
  return df->size;
 }

 if (!driver->textconv)
  BUG("fill_textconv called with non-textconv driver");

 if (driver->textconv_cache && df->oid_valid) {
  *outbuf = notes_cache_get(driver->textconv_cache,
       &df->oid,
       &size);
  if (*outbuf)
   return size;
 }

 *outbuf = run_textconv(r, driver->textconv, df, &size);
 if (!*outbuf)
  die("unable to read files to diff");

 if (driver->textconv_cache && df->oid_valid) {

  notes_cache_put(driver->textconv_cache, &df->oid, *outbuf,
    size);






  notes_cache_write(driver->textconv_cache);
 }

 return size;
}
