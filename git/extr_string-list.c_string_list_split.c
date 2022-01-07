
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; } ;


 int die (char*) ;
 char* strchr (char const*,int) ;
 int string_list_append (struct string_list*,char const*) ;
 int string_list_append_nodup (struct string_list*,int ) ;
 int xmemdupz (char const*,int) ;

int string_list_split(struct string_list *list, const char *string,
        int delim, int maxsplit)
{
 int count = 0;
 const char *p = string, *end;

 if (!list->strdup_strings)
  die("internal error in string_list_split(): "
      "list->strdup_strings must be set");
 for (;;) {
  count++;
  if (maxsplit >= 0 && count > maxsplit) {
   string_list_append(list, p);
   return count;
  }
  end = strchr(p, delim);
  if (end) {
   string_list_append_nodup(list, xmemdupz(p, end - p));
   p = end + 1;
  } else {
   string_list_append(list, p);
   return count;
  }
 }
}
