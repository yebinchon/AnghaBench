
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vci_t ;
struct lanai_dev {int dummy; } ;
typedef int bus_addr_t ;


 int CARDVCC_SIZE ;
 int sram_addr (struct lanai_dev const*,int) ;

__attribute__((used)) static inline bus_addr_t cardvcc_addr(const struct lanai_dev *lanai,
 vci_t vci)
{
 return sram_addr(lanai, vci * CARDVCC_SIZE);
}
