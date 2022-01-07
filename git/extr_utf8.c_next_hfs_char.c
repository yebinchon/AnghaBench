
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucs_char_t ;


 int pick_one_utf8_char (char const**,int *) ;

__attribute__((used)) static ucs_char_t next_hfs_char(const char **in)
{
 while (1) {
  ucs_char_t out = pick_one_utf8_char(in, ((void*)0));






  if (!*in)
   return 0;


  switch (out) {
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

  return out;
 }
}
