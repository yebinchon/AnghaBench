
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ double_decode; } ;


 TYPE_1__ conf ;
 int decode_hex (char*,char*) ;
 int strip_newlines (char*) ;
 char* trim_str (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
decode_url (char *url)
{
  char *out, *decoded;

  if ((url == ((void*)0)) || (*url == '\0'))
    return ((void*)0);

  out = decoded = xstrdup (url);
  decode_hex (url, out);

  if (conf.double_decode)
    decode_hex (decoded, out);
  strip_newlines (out);

  return trim_str (out);
}
