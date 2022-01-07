
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int browsers_hash_idx; int ** user_browsers_hash; } ;


 size_t ARRAY_SIZE (int ) ;
 int BROWSER_TYPE_LEN ;
 char* alloc_string (char*) ;
 int browsers ;
 int ** browsers_hash ;
 char* check_http_crawler (char*) ;
 TYPE_1__ conf ;
 char* parse_browser (char*,char*,size_t,int **) ;
 char* parse_crawler (char*,char*,char*) ;
 char* strstr (char*,int ) ;
 int xstrncpy (char*,char*,int ) ;

char *
verify_browser (char *str, char *type)
{
  char *match = ((void*)0), *token = ((void*)0);
  int i = 0;
  size_t j = 0;

  if (str == ((void*)0) || *str == '\0')
    return ((void*)0);


  for (i = 0; i < conf.browsers_hash_idx; ++i) {
    if ((match = strstr (str, conf.user_browsers_hash[i][0])) == ((void*)0))
      continue;
    return parse_browser (match, type, i, conf.user_browsers_hash);
  }

  if ((match = check_http_crawler (str)) &&
      (token = parse_crawler (str, match, type)))
    return token;


  for (j = 0; j < ARRAY_SIZE (browsers); ++j) {
    if ((match = strstr (str, browsers_hash[j][0])) == ((void*)0))
      continue;
    return parse_browser (match, type, j, browsers_hash);
  }

  xstrncpy (type, "Unknown", BROWSER_TYPE_LEN);

  return alloc_string ("Unknown");
}
