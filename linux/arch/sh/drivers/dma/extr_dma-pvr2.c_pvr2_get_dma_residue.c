
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_channel {int dummy; } ;


 scalar_t__ xfer_complete ;

__attribute__((used)) static int pvr2_get_dma_residue(struct dma_channel *chan)
{
 return xfer_complete == 0;
}
