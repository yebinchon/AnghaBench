
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trailer_if_exists { ____Placeholder_trailer_if_exists } trailer_if_exists ;


 int EXISTS_ADD ;
 int EXISTS_ADD_IF_DIFFERENT ;
 int EXISTS_ADD_IF_DIFFERENT_NEIGHBOR ;
 int EXISTS_DEFAULT ;
 int EXISTS_DO_NOTHING ;
 int EXISTS_REPLACE ;
 int strcasecmp (char*,char const*) ;

int trailer_set_if_exists(enum trailer_if_exists *item, const char *value)
{
 if (!value)
  *item = EXISTS_DEFAULT;
 else if (!strcasecmp("addIfDifferent", value))
  *item = EXISTS_ADD_IF_DIFFERENT;
 else if (!strcasecmp("addIfDifferentNeighbor", value))
  *item = EXISTS_ADD_IF_DIFFERENT_NEIGHBOR;
 else if (!strcasecmp("add", value))
  *item = EXISTS_ADD;
 else if (!strcasecmp("replace", value))
  *item = EXISTS_REPLACE;
 else if (!strcasecmp("doNothing", value))
  *item = EXISTS_DO_NOTHING;
 else
  return -1;
 return 0;
}
