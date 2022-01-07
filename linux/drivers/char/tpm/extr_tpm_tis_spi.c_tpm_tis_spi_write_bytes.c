
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tpm_tis_data {int dummy; } ;


 int tpm_tis_spi_transfer (struct tpm_tis_data*,int ,int ,int *,int const*) ;

__attribute__((used)) static int tpm_tis_spi_write_bytes(struct tpm_tis_data *data, u32 addr,
       u16 len, const u8 *value)
{
 return tpm_tis_spi_transfer(data, addr, len, ((void*)0), value);
}
