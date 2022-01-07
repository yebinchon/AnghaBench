
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int md5 (unsigned char*,int,unsigned char*) ;
 int strlen (char const*) ;

unsigned long long word_hash (const char *str, int len) {
  union {
    unsigned char data[16];
    unsigned long long hash;
  } md5_h;

  if (len < 0) {
    len = strlen (str);
  }

  md5 ((unsigned char *) str, len, md5_h.data);

  return md5_h.hash;
}
