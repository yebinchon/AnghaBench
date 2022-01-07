
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fe_tx_ring {int * tx_dma; } ;
struct TYPE_3__ {int txd4; } ;
struct fe_map_state {size_t ring_idx; int def_txd4; TYPE_1__ txd; } ;


 size_t NEXT_TX_DESP_IDX (size_t) ;
 int fe_set_txd (TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void fe_tx_dma_write_desc(struct fe_tx_ring *ring, struct fe_map_state *st)
{
 fe_set_txd(&st->txd, &ring->tx_dma[st->ring_idx]);
 memset(&st->txd, 0, sizeof(st->txd));
 st->txd.txd4 = st->def_txd4;
 st->ring_idx = NEXT_TX_DESP_IDX(st->ring_idx);
}
