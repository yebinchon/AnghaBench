
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;

__attribute__((used)) static inline void dump(const char *label, const uint8_t *buf, size_t len)
{
  printf("%s: ", label);
  for (size_t i = 0; i < len; i++)
    printf("%02x", buf[i]);
  printf("\n");
}
