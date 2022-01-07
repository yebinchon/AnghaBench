
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_4__ {scalar_t__ read_final_eot_; scalar_t__ write_final_eot_; } ;
typedef TYPE_1__ oxnas_dma_device_settings_t ;


 unsigned long DMA_BYTE_CNT_RD_EOT_MASK ;
 unsigned long DMA_BYTE_CNT_WR_EOT_MASK ;

__attribute__((used)) static u32 encode_final_eot(oxnas_dma_device_settings_t* src_settings,
    oxnas_dma_device_settings_t* dst_settings,
    unsigned long length)
{

 unsigned long encoded = length;
 if (dst_settings->write_final_eot_) {
  encoded |= DMA_BYTE_CNT_WR_EOT_MASK;
 } else {
  encoded &= ~DMA_BYTE_CNT_WR_EOT_MASK;
 }
 if (src_settings->read_final_eot_) {
  encoded |= DMA_BYTE_CNT_RD_EOT_MASK;
 } else {
  encoded &= ~DMA_BYTE_CNT_RD_EOT_MASK;
 }






 return encoded;
}
