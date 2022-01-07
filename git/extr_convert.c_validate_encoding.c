
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int advise (char const*,char const*,char const*,...) ;
 int die (char const*,char const*,char const*) ;
 int error (char const*,char const*,char const*) ;
 int free (char*) ;
 scalar_t__ has_prohibited_utf_bom (char const*,char const*,size_t) ;
 scalar_t__ is_missing_required_utf_bom (char const*,char const*,size_t) ;
 scalar_t__ istarts_with (char const*,char*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strlen (char*) ;
 char* xstrdup_toupper (char const*) ;

__attribute__((used)) static int validate_encoding(const char *path, const char *enc,
        const char *data, size_t len, int die_on_error)
{

 if (istarts_with(enc, "UTF")) {



  if (has_prohibited_utf_bom(enc, data, len)) {
   const char *error_msg = _(
    "BOM is prohibited in '%s' if encoded as %s");





   const char *advise_msg = _(
    "The file '%s' contains a byte order "
    "mark (BOM). Please use UTF-%s as "
    "working-tree-encoding.");
   const char *stripped = ((void*)0);
   char *upper = xstrdup_toupper(enc);
   upper[strlen(upper)-2] = '\0';
   if (skip_prefix(upper, "UTF", &stripped))
    skip_prefix(stripped, "-", &stripped);
   advise(advise_msg, path, stripped);
   free(upper);
   if (die_on_error)
    die(error_msg, path, enc);
   else {
    return error(error_msg, path, enc);
   }

  } else if (is_missing_required_utf_bom(enc, data, len)) {
   const char *error_msg = _(
    "BOM is required in '%s' if encoded as %s");
   const char *advise_msg = _(
    "The file '%s' is missing a byte order "
    "mark (BOM). Please use UTF-%sBE or UTF-%sLE "
    "(depending on the byte order) as "
    "working-tree-encoding.");
   const char *stripped = ((void*)0);
   char *upper = xstrdup_toupper(enc);
   if (skip_prefix(upper, "UTF", &stripped))
    skip_prefix(stripped, "-", &stripped);
   advise(advise_msg, path, stripped, stripped);
   free(upper);
   if (die_on_error)
    die(error_msg, path, enc);
   else {
    return error(error_msg, path, enc);
   }
  }

 }
 return 0;
}
