
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long XDF_HISTOGRAM_DIFF ;
 long XDF_NEED_MINIMAL ;
 long XDF_PATIENCE_DIFF ;
 int strcasecmp (char const*,char*) ;

long parse_algorithm_value(const char *value)
{
 if (!value)
  return -1;
 else if (!strcasecmp(value, "myers") || !strcasecmp(value, "default"))
  return 0;
 else if (!strcasecmp(value, "minimal"))
  return XDF_NEED_MINIMAL;
 else if (!strcasecmp(value, "patience"))
  return XDF_PATIENCE_DIFF;
 else if (!strcasecmp(value, "histogram"))
  return XDF_HISTOGRAM_DIFF;




 return -1;
}
