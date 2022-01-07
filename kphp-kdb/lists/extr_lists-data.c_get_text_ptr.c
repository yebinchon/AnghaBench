
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *get_text_ptr (char *text) {

  return (*(unsigned char *)text) == 0xfe ? text + 4 : text + 1;
}
