
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GChartType ;



__attribute__((used)) static const char *
chart2str (GChartType type)
{
  static const char *strings[] = { "null", "bar", "area-spline" };
  return strings[type];
}
