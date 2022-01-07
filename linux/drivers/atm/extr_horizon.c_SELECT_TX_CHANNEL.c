
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int hrz_dev ;


 int TX_CHANNEL_PORT_OFF ;
 int wr_regl (int *,int ,int ) ;

__attribute__((used)) static inline void SELECT_TX_CHANNEL (hrz_dev * dev, u16 tx_channel) {
  wr_regl (dev, TX_CHANNEL_PORT_OFF, tx_channel);
  return;
}
