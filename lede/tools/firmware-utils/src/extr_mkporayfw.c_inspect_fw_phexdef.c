
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int printf (char*,...) ;

__attribute__((used)) static inline void inspect_fw_phexdef(char *label,
                                      uint32_t val, uint32_t defval)
{
 printf("%-23s: 0x%08x                  ", label, val);

 if (val == defval) {
  printf("(== OpenWrt default)\n");
 } else {
  printf("(OpenWrt default: 0x%08x)\n", defval);
 }
}
