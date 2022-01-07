
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DAP2695_NVRAM_ADDR ;
 int DAP2695_NVRAM_SIZE ;
 scalar_t__ KSEG1ADDR (int ) ;
 int ath79_nvram_parse_mac_addr (int *,int ,char const*,char*) ;
 int pr_err (char*,char const*) ;

__attribute__((used)) static void dap2695_get_mac(const char *name, char *mac)
{
 u8 *nvram = (u8 *) KSEG1ADDR(DAP2695_NVRAM_ADDR);
 int err;

 err = ath79_nvram_parse_mac_addr(nvram, DAP2695_NVRAM_SIZE,
      name, mac);
 if (err)
  pr_err("no MAC address found for %s\n", name);
}
