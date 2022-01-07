
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum trailer_where { ____Placeholder_trailer_where } trailer_where ;


 int WHERE_AFTER ;
 int WHERE_BEFORE ;
 int WHERE_DEFAULT ;
 int WHERE_END ;
 int WHERE_START ;
 int strcasecmp (char*,char const*) ;

int trailer_set_where(enum trailer_where *item, const char *value)
{
 if (!value)
  *item = WHERE_DEFAULT;
 else if (!strcasecmp("after", value))
  *item = WHERE_AFTER;
 else if (!strcasecmp("before", value))
  *item = WHERE_BEFORE;
 else if (!strcasecmp("end", value))
  *item = WHERE_END;
 else if (!strcasecmp("start", value))
  *item = WHERE_START;
 else
  return -1;
 return 0;
}
