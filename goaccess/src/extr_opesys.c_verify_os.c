
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (int **) ;
 int OPESYS_TYPE_LEN ;
 char* alloc_string (char*) ;
 int ** os ;
 char* parse_os (char const*,char*,char*,size_t) ;
 char* strstr (char const*,int ) ;
 int xstrncpy (char*,char*,int ) ;

char *
verify_os (const char *str, char *os_type)
{
  char *a;
  size_t i;

  if (str == ((void*)0) || *str == '\0')
    return ((void*)0);

  for (i = 0; i < ARRAY_SIZE (os); i++) {
    if ((a = strstr (str, os[i][0])) != ((void*)0))
      return parse_os (str, a, os_type, i);
  }
  xstrncpy (os_type, "Unknown", OPESYS_TYPE_LEN);

  return alloc_string ("Unknown");
}
