
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;

__attribute__((used)) static int is_cmarker(char *buf, int marker_char, int marker_size)
{
 int want_sp;
 want_sp = (marker_char == '<') || (marker_char == '>');

 while (marker_size--)
  if (*buf++ != marker_char)
   return 0;
 if (want_sp && *buf != ' ')
  return 0;
 return isspace(*buf);
}
