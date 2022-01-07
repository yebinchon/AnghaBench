
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st33zp24_spi_phy {int latency; } ;


 int ENODEV ;
 int MAX_SPI_LATENCY ;
 int TPM_INTF_CAPABILITY ;
 int st33zp24_spi_read8_reg (void*,int ,int *,int) ;

__attribute__((used)) static int st33zp24_spi_evaluate_latency(void *phy_id)
{
 struct st33zp24_spi_phy *phy = phy_id;
 int latency = 1, status = 0;
 u8 data = 0;

 while (!status && latency < MAX_SPI_LATENCY) {
  phy->latency = latency;
  status = st33zp24_spi_read8_reg(phy_id, TPM_INTF_CAPABILITY,
      &data, 1);
  latency++;
 }
 if (status < 0)
  return status;
 if (latency == MAX_SPI_LATENCY)
  return -ENODEV;

 return latency - 1;
}
