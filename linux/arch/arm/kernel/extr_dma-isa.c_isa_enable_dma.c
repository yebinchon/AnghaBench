
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int length; unsigned long dma_address; } ;
struct TYPE_5__ {unsigned int dma_mode; int sgcount; int count; scalar_t__ invalid; TYPE_1__ buf; int addr; TYPE_1__* sg; } ;
typedef TYPE_2__ dma_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;

 int DMA_MODE_MASK ;


 int DMA_NONE ;
 int DMA_TO_DEVICE ;
 size_t ISA_DMA_ADDR ;
 size_t ISA_DMA_CLRFF ;
 size_t ISA_DMA_COUNT ;
 size_t ISA_DMA_MASK ;
 size_t ISA_DMA_MODE ;
 size_t ISA_DMA_PGHI ;
 size_t ISA_DMA_PGLO ;
 unsigned long dma_map_single (int *,int ,int,int) ;
 int isa_dma_dev ;
 int ** isa_dma_port ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void isa_enable_dma(unsigned int chan, dma_t *dma)
{
 if (dma->invalid) {
  unsigned long address, length;
  unsigned int mode;
  enum dma_data_direction direction;

  mode = (chan & 3) | dma->dma_mode;
  switch (dma->dma_mode & DMA_MODE_MASK) {
  case 129:
   direction = DMA_FROM_DEVICE;
   break;

  case 128:
   direction = DMA_TO_DEVICE;
   break;

  case 130:
   direction = DMA_BIDIRECTIONAL;
   break;

  default:
   direction = DMA_NONE;
   break;
  }

  if (!dma->sg) {




   dma->sg = &dma->buf;
   dma->sgcount = 1;
   dma->buf.length = dma->count;
   dma->buf.dma_address = dma_map_single(&isa_dma_dev,
    dma->addr, dma->count,
    direction);
  }

  address = dma->buf.dma_address;
  length = dma->buf.length - 1;

  outb(address >> 16, isa_dma_port[chan][ISA_DMA_PGLO]);
  outb(address >> 24, isa_dma_port[chan][ISA_DMA_PGHI]);

  if (chan >= 4) {
   address >>= 1;
   length >>= 1;
  }

  outb(0, isa_dma_port[chan][ISA_DMA_CLRFF]);

  outb(address, isa_dma_port[chan][ISA_DMA_ADDR]);
  outb(address >> 8, isa_dma_port[chan][ISA_DMA_ADDR]);

  outb(length, isa_dma_port[chan][ISA_DMA_COUNT]);
  outb(length >> 8, isa_dma_port[chan][ISA_DMA_COUNT]);

  outb(mode, isa_dma_port[chan][ISA_DMA_MODE]);
  dma->invalid = 0;
 }
 outb(chan & 3, isa_dma_port[chan][ISA_DMA_MASK]);
}
