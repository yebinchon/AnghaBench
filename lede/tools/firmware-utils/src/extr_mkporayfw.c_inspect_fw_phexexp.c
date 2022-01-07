
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static inline void inspect_fw_phexexp(char *label,
                                      uint32_t val, uint32_t expval)
{
 printf("%-23s: 0x%08x ", label, val);

 if (val == expval) {
  printf("(ok)\n");
 } else {
  printf("(expected: 0x%08x)\n", expval);
 }
}
