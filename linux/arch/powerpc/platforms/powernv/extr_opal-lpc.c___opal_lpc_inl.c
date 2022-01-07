
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int __le32 ;
typedef int __be32 ;


 int OPAL_LPC_IO ;
 int be32_to_cpu (int ) ;
 scalar_t__ opal_lpc_chip_id ;
 int opal_lpc_inb (unsigned long) ;
 scalar_t__ opal_lpc_read (scalar_t__,int ,unsigned long,int *,int) ;

__attribute__((used)) static __le32 __opal_lpc_inl(unsigned long port)
{
 int64_t rc;
 __be32 data;

 if (opal_lpc_chip_id < 0 || port > 0xfffc)
  return 0xffffffff;
 if (port & 3)
  return (__le32)opal_lpc_inb(port ) << 24 |
         (__le32)opal_lpc_inb(port + 1) << 16 |
         (__le32)opal_lpc_inb(port + 2) << 8 |
          opal_lpc_inb(port + 3);
 rc = opal_lpc_read(opal_lpc_chip_id, OPAL_LPC_IO, port, &data, 4);
 return rc ? 0xffffffff : be32_to_cpu(data);
}
