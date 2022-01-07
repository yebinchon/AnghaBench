
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ op_is_write (int ) ;
 int req_op (struct request*) ;

__attribute__((used)) static inline enum dma_data_direction carm_rq_dir(struct request *rq)
{
 return op_is_write(req_op(rq)) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
}
