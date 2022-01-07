
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum color_transport { ____Placeholder_color_transport } color_transport ;


 char const** transport_colors ;
 int transport_use_color ;
 scalar_t__ want_color_stderr (int ) ;

__attribute__((used)) static const char *transport_get_color(enum color_transport ix)
{
 if (want_color_stderr(transport_use_color))
  return transport_colors[ix];
 return "";
}
