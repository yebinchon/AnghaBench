
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trailer_if_missing { ____Placeholder_trailer_if_missing } trailer_if_missing ;


 int MISSING_ADD ;
 int MISSING_DEFAULT ;
 int MISSING_DO_NOTHING ;
 int strcasecmp (char*,char const*) ;

int trailer_set_if_missing(enum trailer_if_missing *item, const char *value)
{
 if (!value)
  *item = MISSING_DEFAULT;
 else if (!strcasecmp("doNothing", value))
  *item = MISSING_DO_NOTHING;
 else if (!strcasecmp("add", value))
  *item = MISSING_ADD;
 else
  return -1;
 return 0;
}
