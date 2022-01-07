
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* diag0c ) (void*) ;} ;


 int DIAG_STAT_X00C ;
 TYPE_1__ diag_dma_ops ;
 int diag_stat_inc (int ) ;
 size_t smp_processor_id () ;
 int stub1 (void*) ;

__attribute__((used)) static void diag0c_fn(void *data)
{
 diag_stat_inc(DIAG_STAT_X00C);
 diag_dma_ops.diag0c(((void **) data)[smp_processor_id()]);
}
