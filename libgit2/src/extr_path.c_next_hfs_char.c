
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int git__tolower (int) ;
 int git__utf8_iterate (int const*,int,int*) ;

__attribute__((used)) static int32_t next_hfs_char(const char **in, size_t *len)
{
 while (*len) {
  int32_t codepoint;
  int cp_len = git__utf8_iterate((const uint8_t *)(*in), (int)(*len), &codepoint);
  if (cp_len < 0)
   return -1;

  (*in) += cp_len;
  (*len) -= cp_len;


  switch (codepoint) {
  case 0x200c:
  case 0x200d:
  case 0x200e:
  case 0x200f:
  case 0x202a:
  case 0x202b:
  case 0x202c:
  case 0x202d:
  case 0x202e:
  case 0x206a:
  case 0x206b:
  case 0x206c:
  case 0x206d:
  case 0x206e:
  case 0x206f:
  case 0xfeff:
   continue;
  }





  return git__tolower(codepoint);
 }
 return 0;
}
