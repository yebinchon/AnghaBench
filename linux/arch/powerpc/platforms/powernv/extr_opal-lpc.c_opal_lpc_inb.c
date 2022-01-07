
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ int64_t ;
typedef int __be32 ;


 int OPAL_LPC_IO ;
 int be32_to_cpu (int ) ;
 scalar_t__ opal_lpc_chip_id ;
 scalar_t__ opal_lpc_read (scalar_t__,int ,unsigned long,int *,int) ;

__attribute__((used)) static u8 opal_lpc_inb(unsigned long port)
{
 int64_t rc;
 __be32 data;

 if (opal_lpc_chip_id < 0 || port > 0xffff)
  return 0xff;
 rc = opal_lpc_read(opal_lpc_chip_id, OPAL_LPC_IO, port, &data, 1);
 return rc ? 0xff : be32_to_cpu(data);
}
