
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char const) ;
 void* strchr (char const*,char) ;
 size_t strlen (char*) ;
 char* strstr (char const*,char*) ;
 scalar_t__ url_is_local_not_ssh (char const*) ;
 char* xstrdup (char const*) ;
 char* xstrfmt (char*,int,char const*,int,char*) ;

char *transport_anonymize_url(const char *url)
{
 char *scheme_prefix, *anon_part;
 size_t anon_len, prefix_len = 0;

 anon_part = strchr(url, '@');
 if (url_is_local_not_ssh(url) || !anon_part)
  goto literal_copy;

 anon_len = strlen(++anon_part);
 scheme_prefix = strstr(url, "://");
 if (!scheme_prefix) {
  if (!strchr(anon_part, ':'))

   goto literal_copy;
 } else {
  const char *cp;

  for (cp = url; cp < scheme_prefix; cp++) {
   switch (*cp) {

   case '+': case '.': case '-':
    break;
   default:
    if (isalnum(*cp))
     break;

    goto literal_copy;
   }
  }

  cp = strchr(scheme_prefix + 3, '/');
  if (cp && cp < anon_part)
   goto literal_copy;
  prefix_len = scheme_prefix - url + 3;
 }
 return xstrfmt("%.*s%.*s", (int)prefix_len, url,
         (int)anon_len, anon_part);
literal_copy:
 return xstrdup(url);
}
