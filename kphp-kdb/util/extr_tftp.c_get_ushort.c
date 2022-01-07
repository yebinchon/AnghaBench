
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int get_ushort (const char *in) {
  const unsigned char *s = (unsigned char *) in;
  return (((unsigned int) s[0]) << 8) | ((unsigned int) s[1]);
}
