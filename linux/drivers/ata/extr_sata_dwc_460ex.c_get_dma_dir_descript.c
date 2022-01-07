
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;






__attribute__((used)) static const char *get_dma_dir_descript(int dma_dir)
{
 switch ((enum dma_data_direction)dma_dir) {
 case 130:
  return "bidirectional";
 case 128:
  return "to device";
 case 129:
  return "from device";
 default:
  return "none";
 }
}
