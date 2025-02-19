
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memcpy (char*,char*,int) ;
 unsigned long long searchy_word_hash (char*,int) ;

__attribute__((used)) static unsigned long long searchy_make_tag (char *tag_name, int tag_name_len, unsigned int value) {
  assert (tag_name_len <= 16);
  char s[32];
  int i = 1;
  s[0] = 0x1f;
  memcpy (s + 1, tag_name, tag_name_len);
  i += tag_name_len;
  while (value >= 0x40) {
    s[i++] = (unsigned char) ((value & 0x7f) + 0x80);
    value >>= 7;
  }
  s[i++] = (unsigned char) ((value & 0x3f) + 0x40);
  return searchy_word_hash (s, i);
}
