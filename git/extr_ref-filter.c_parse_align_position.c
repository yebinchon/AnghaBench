
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int align_type ;


 int ALIGN_LEFT ;
 int ALIGN_MIDDLE ;
 int ALIGN_RIGHT ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static align_type parse_align_position(const char *s)
{
 if (!strcmp(s, "right"))
  return ALIGN_RIGHT;
 else if (!strcmp(s, "middle"))
  return ALIGN_MIDDLE;
 else if (!strcmp(s, "left"))
  return ALIGN_LEFT;
 return -1;
}
