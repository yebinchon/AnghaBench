
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_meta_key ;
 int buffer_meta_key_len ;
 int memcpy (int ,char const*,int) ;

void buffer_meta_init_key (const char *key, int key_len) {
  memcpy (buffer_meta_key, key, key_len);
  buffer_meta_key_len = key_len;
}
