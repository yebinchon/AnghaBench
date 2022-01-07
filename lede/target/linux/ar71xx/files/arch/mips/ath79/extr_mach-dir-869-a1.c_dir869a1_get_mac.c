
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIR869A1_DEVDATA_ADDR ;
 int DIR869A1_DEVDATA_SIZE ;
 scalar_t__ KSEG1ADDR (int ) ;
 int ath79_nvram_parse_mac_addr (int *,int ,char const*,char*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static void dir869a1_get_mac(const char *name, char *mac)
{
 u8 *nvram = (u8 *) KSEG1ADDR(DIR869A1_DEVDATA_ADDR);
 int err;

 err = ath79_nvram_parse_mac_addr(nvram, DIR869A1_DEVDATA_SIZE,
      name, mac);
 if (err)
  pr_err("no MAC address found for %s\n", name);
}
