
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BROWSER_TYPE_LEN ;
 char* alloc_string (char*) ;
 char* char_replace (char*,char,char) ;
 size_t count_matches (char*,char) ;
 int memmove (char*,char*,scalar_t__) ;
 char* parse_opera (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 char* strpbrk (char*,char*) ;
 char* strrchr (char*,char) ;
 int * strstr (char*,char*) ;
 int xstrncpy (char*,char*,int ) ;

__attribute__((used)) static char *
parse_browser (char *match, char *type, int i, char ***hash)
{
  char *b = ((void*)0), *ptr = ((void*)0), *slh = ((void*)0);
  size_t cnt = 0, space = 0;



  if ((cnt = count_matches (hash[i][0], ' ')) && (b = match)) {
    while (space++ < cnt && (b = strchr (b, ' ')))
      b++;
  } else
    b = match;

  xstrncpy (type, hash[i][1], BROWSER_TYPE_LEN);

  if (strstr (match, "rv:11") && strstr (match, "Trident/7.0")) {
    return alloc_string ("MSIE/11.0");
  }

  if (strstr (match, "OPR") != ((void*)0) && (slh = strrchr (match, '/'))) {
    return parse_opera (slh);
  }

  if (strstr (match, "Opera") && (slh = strrchr (match, '/')) && match < slh) {
    memmove (match + 5, slh, strlen (slh) + 1);
  }

  if (strstr (match, "MSIE") != ((void*)0)) {
    if ((ptr = strpbrk (match, ";)-")) != ((void*)0))
      *ptr = '\0';
    match = char_replace (match, ' ', '/');
  }

  else if ((ptr = strpbrk (b, ";) ")) != ((void*)0)) {
    *ptr = '\0';
  }

  return alloc_string (match);
}
