
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; } ;


 int die (char*,...) ;
 int is_absolute_path (char*) ;
 scalar_t__ normalize_path_copy (char*,char*) ;

__attribute__((used)) static int normalize_ceiling_entry(struct string_list_item *item, void *unused)
{
 char *ceil = item->string;

 if (!*ceil)
  die("Empty path is not supported");
 if (!is_absolute_path(ceil))
  die("Path \"%s\" is not absolute", ceil);
 if (normalize_path_copy(ceil, ceil) < 0)
  die("Path \"%s\" could not be normalized", ceil);
 return 1;
}
