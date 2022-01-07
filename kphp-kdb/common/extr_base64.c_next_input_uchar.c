
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char next_input_uchar (const unsigned char *const input, int ilen, int *i) {
  if (*i >= ilen) { return 0; }
  return input[(*i)++];
}
