
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int item; } ;
typedef TYPE_1__ GColors ;
typedef int GColorPair ;


 int FATAL (char*,char*,...) ;
 int get_color_item_enum (char*) ;
 int parse_attr_color (TYPE_1__*,char*) ;
 int parse_bg_fg_color (int *,char*) ;
 int parse_module_color (TYPE_1__*,char*) ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 size_t strspn (char*,char*) ;

__attribute__((used)) static void
parse_color_line (GColorPair * pair, GColors * color, char *line)
{
  char *val;
  int item = 0;
  size_t idx;


  idx = strcspn (line, " \t");
  if (strlen (line) == idx)
    FATAL ("Malformed color key at line: %s", line);

  line[idx] = '\0';
  if ((item = get_color_item_enum (line)) == -1)
    FATAL ("Unable to find color key: %s", line);


  val = line + (idx + 1);
  idx = strspn (val, " \t");
  if (strlen (val) == idx)
    FATAL ("Malformed color value at line: %s", line);
  val = val + idx;


  if (parse_bg_fg_color (pair, val) == 1)
    FATAL ("Invalid bg/fg color pairs at: %s %s", line, val);

  if (parse_attr_color (color, val) == 1)
    FATAL ("Invalid color attrs at: %s %s", line, val);

  if (parse_module_color (color, val) == 1)
    FATAL ("Invalid color module at: %s %s", line, val);

  color->item = item;
}
