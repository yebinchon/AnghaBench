
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
typedef int loff_t ;
struct TYPE_5__ {int tx_avail; int rx_avail; int noof_spare_buffers; int unassigned_cell_count; int hec_error_count; int rx_cell_count; int tx_cell_count; } ;
typedef TYPE_1__ hrz_dev ;


 int BUCKET_CAPACITY_ACCESS ;
 int BUCKET_FULLNESS_ACCESS ;
 int DBG_FLOW ;
 TYPE_1__* HRZ_DEV (struct atm_dev*) ;
 int PRINTD (int ,char*) ;
 int RX_FREE_BUFFER_COUNT_OFF ;
 unsigned int TX_CHANS ;
 int TX_FREE_BUFFER_COUNT_OFF ;
 int query_tx_channel_config (TYPE_1__*,unsigned int,int ) ;
 int rd_regw (TYPE_1__*,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int hrz_proc_read (struct atm_dev * atm_dev, loff_t * pos, char * page) {
  hrz_dev * dev = HRZ_DEV(atm_dev);
  int left = *pos;
  PRINTD (DBG_FLOW, "hrz_proc_read");
  if (!left--)
    return sprintf (page,
      "cells: TX %lu, RX %lu, HEC errors %lu, unassigned %lu.\n",
      dev->tx_cell_count, dev->rx_cell_count,
      dev->hec_error_count, dev->unassigned_cell_count);

  if (!left--)
    return sprintf (page,
      "free cell buffers: TX %hu, RX %hu+%hu.\n",
      rd_regw (dev, TX_FREE_BUFFER_COUNT_OFF),
      rd_regw (dev, RX_FREE_BUFFER_COUNT_OFF),
      dev->noof_spare_buffers);

  if (!left--)
    return sprintf (page,
      "cps remaining: TX %u, RX %u\n",
      dev->tx_avail, dev->rx_avail);

  return 0;
}
