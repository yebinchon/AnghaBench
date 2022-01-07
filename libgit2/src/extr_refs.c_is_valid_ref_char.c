
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_valid_ref_char(char ch)
{
 if ((unsigned) ch <= ' ')
  return 0;

 switch (ch) {
 case '~':
 case '^':
 case ':':
 case '\\':
 case '?':
 case '[':
  return 0;
 default:
  return 1;
 }
}
