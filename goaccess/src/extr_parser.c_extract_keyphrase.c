
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* char_replace (char*,char,char) ;
 char* decode_url (char*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 char* trim_str (char*) ;

__attribute__((used)) static int
extract_keyphrase (char *ref, char **keyphrase)
{
  char *r, *ptr, *pch, *referer;
  int encoded = 0;

  if (!(strstr (ref, "http://www.google.")) &&
      !(strstr (ref, "http://webcache.googleusercontent.com/")) &&
      !(strstr (ref, "http://translate.googleusercontent.com/")) &&
      !(strstr (ref, "https://www.google.")) &&
      !(strstr (ref, "https://webcache.googleusercontent.com/")) &&
      !(strstr (ref, "https://translate.googleusercontent.com/")))
    return 1;


  if ((r = strstr (ref, "/+&")) != ((void*)0))
    return 1;

  else if ((r = strstr (ref, "/+")) != ((void*)0))
    r += 2;

  else if ((r = strstr (ref, "q=cache:")) != ((void*)0)) {
    pch = strchr (r, '+');
    if (pch)
      r += pch - r + 1;
  }

  else if ((r = strstr (ref, "&q=")) != ((void*)0) ||
           (r = strstr (ref, "?q=")) != ((void*)0))
    r += 3;
  else if ((r = strstr (ref, "%26q%3D")) != ((void*)0) ||
           (r = strstr (ref, "%3Fq%3D")) != ((void*)0))
    encoded = 1, r += 7;
  else
    return 1;

  if (!encoded && (ptr = strchr (r, '&')) != ((void*)0))
    *ptr = '\0';
  else if (encoded && (ptr = strstr (r, "%26")) != ((void*)0))
    *ptr = '\0';

  referer = decode_url (r);
  if (referer == ((void*)0) || *referer == '\0')
    return 1;

  referer = char_replace (referer, '+', ' ');
  *keyphrase = trim_str (referer);

  return 0;
}
