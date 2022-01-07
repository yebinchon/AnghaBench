
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u32 ;
typedef size_t u16 ;
struct TYPE_7__ {int rd_buf_type; int wr_buf_type; } ;
typedef TYPE_1__ rx_ch_desc ;
struct TYPE_8__ {int noof_spare_buffers; size_t* spare_buffers; int mem_lock; } ;
typedef TYPE_2__ hrz_dev ;
struct TYPE_9__ {TYPE_1__* rx_descs; } ;


 size_t BUFFER_PTR_MASK ;
 size_t CHANNEL_TYPE_AAL5 ;
 int DBG_ERR ;
 int DBG_FLOW ;
 int DBG_VCC ;
 int EBUSY ;
 size_t FIRST_CELL_OF_AAL5_FRAME ;
 int PRINTD (int,char*,...) ;
 size_t RX_CHANNEL_DISABLED ;
 size_t RX_CHANNEL_IDLE ;
 TYPE_5__* memmap ;
 size_t rd_mem (TYPE_2__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr_mem (TYPE_2__*,int *,size_t) ;

__attribute__((used)) static int hrz_open_rx (hrz_dev * dev, u16 channel) {



  unsigned long flags;
  u32 channel_type;

  u16 buf_ptr = RX_CHANNEL_IDLE;

  rx_ch_desc * rx_desc = &memmap->rx_descs[channel];

  PRINTD (DBG_FLOW, "hrz_open_rx %x", channel);

  spin_lock_irqsave (&dev->mem_lock, flags);
  channel_type = rd_mem (dev, &rx_desc->wr_buf_type) & BUFFER_PTR_MASK;
  spin_unlock_irqrestore (&dev->mem_lock, flags);


  if (channel_type != RX_CHANNEL_DISABLED) {
    PRINTD (DBG_ERR|DBG_VCC, "RX channel for VC already open");
    return -EBUSY;
  }


  if (dev->noof_spare_buffers) {
    buf_ptr = dev->spare_buffers[--dev->noof_spare_buffers];
    PRINTD (DBG_VCC, "using a spare buffer: %u", buf_ptr);

    if (buf_ptr == RX_CHANNEL_DISABLED || buf_ptr == RX_CHANNEL_IDLE) {

      PRINTD (DBG_ERR|DBG_VCC, "bad spare buffer pointer, using IDLE");
      buf_ptr = RX_CHANNEL_IDLE;
    }
  } else {
    PRINTD (DBG_VCC, "using IDLE buffer pointer");
  }




  spin_lock_irqsave (&dev->mem_lock, flags);

  wr_mem (dev, &rx_desc->wr_buf_type,
   buf_ptr | CHANNEL_TYPE_AAL5 | FIRST_CELL_OF_AAL5_FRAME);
  if (buf_ptr != RX_CHANNEL_IDLE)
    wr_mem (dev, &rx_desc->rd_buf_type, buf_ptr);

  spin_unlock_irqrestore (&dev->mem_lock, flags);



  PRINTD (DBG_FLOW, "hrz_open_rx ok");

  return 0;
}
