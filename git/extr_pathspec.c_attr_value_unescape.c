
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (char*,...) ;
 scalar_t__ invalid_value_char (char const) ;
 int strlen (char const*) ;
 char* xmallocz (int ) ;

__attribute__((used)) static char *attr_value_unescape(const char *value)
{
 const char *src;
 char *dst, *ret;

 ret = xmallocz(strlen(value));
 for (src = value, dst = ret; *src; src++, dst++) {
  if (*src == '\\') {
   if (!src[1])
    die(_("Escape character '\\' not allowed as "
          "last character in attr value"));
   src++;
  }
  if (invalid_value_char(*src))
   die("cannot use '%c' for value matching", *src);
  *dst = *src;
 }
 *dst = '\0';
 return ret;
}
