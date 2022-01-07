
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vio_dring_state {int dummy; } ;


 int VDC_TX_RING_SIZE ;
 int vio_dring_avail (struct vio_dring_state*,int ) ;

__attribute__((used)) static inline u32 vdc_tx_dring_avail(struct vio_dring_state *dr)
{
 return vio_dring_avail(dr, VDC_TX_RING_SIZE);
}
