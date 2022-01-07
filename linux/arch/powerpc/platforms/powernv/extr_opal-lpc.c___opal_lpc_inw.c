
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int __le16 ;
typedef int __be32 ;


 int OPAL_LPC_IO ;
 int be32_to_cpu (int ) ;
 scalar_t__ opal_lpc_chip_id ;
 int opal_lpc_inb (unsigned long) ;
 scalar_t__ opal_lpc_read (scalar_t__,int ,unsigned long,int *,int) ;

__attribute__((used)) static __le16 __opal_lpc_inw(unsigned long port)
{
 int64_t rc;
 __be32 data;

 if (opal_lpc_chip_id < 0 || port > 0xfffe)
  return 0xffff;
 if (port & 1)
  return (__le16)opal_lpc_inb(port) << 8 | opal_lpc_inb(port + 1);
 rc = opal_lpc_read(opal_lpc_chip_id, OPAL_LPC_IO, port, &data, 2);
 return rc ? 0xffff : be32_to_cpu(data);
}
