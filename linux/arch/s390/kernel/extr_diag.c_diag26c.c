
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum diag26c_sc { ____Placeholder_diag26c_sc } diag26c_sc ;
struct TYPE_2__ {int (* diag26c ) (void*,void*,int) ;} ;


 int DIAG_STAT_X26C ;
 TYPE_1__ diag_dma_ops ;
 int diag_stat_inc (int ) ;
 int stub1 (void*,void*,int) ;

int diag26c(void *req, void *resp, enum diag26c_sc subcode)
{
 diag_stat_inc(DIAG_STAT_X26C);
 return diag_dma_ops.diag26c(req, resp, subcode);
}
