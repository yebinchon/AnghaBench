
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vio_driver_state {scalar_t__ desc_buf_len; int * desc_buf; int * lp; } ;


 int kfree (int *) ;
 int ldc_free (int *) ;

void vio_ldc_free(struct vio_driver_state *vio)
{
 ldc_free(vio->lp);
 vio->lp = ((void*)0);

 kfree(vio->desc_buf);
 vio->desc_buf = ((void*)0);
 vio->desc_buf_len = 0;
}
