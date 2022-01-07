
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct napi_struct {scalar_t__ dev; } ;
struct TYPE_2__ {scalar_t__ vlddes; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int IFX_REG_W32_MASK (int ,int,int ) ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISRC ;
 TYPE_1__* WRX_DMA_CHANNEL_CONFIG (int) ;
 scalar_t__* g_net_dev ;
 int napi_complete (struct napi_struct*) ;
 int netif_running (scalar_t__) ;
 unsigned int ptm_poll (int,int) ;

__attribute__((used)) static int ptm_napi_poll(struct napi_struct *napi, int budget)
{
    int ndev;
    unsigned int work_done;

    for ( ndev = 0; ndev < ARRAY_SIZE(g_net_dev) && g_net_dev[ndev] != napi->dev; ndev++ );

    work_done = ptm_poll(ndev, budget);


    if ( !netif_running(napi->dev) ) {
        napi_complete(napi);
        return work_done;
    }


    if ( WRX_DMA_CHANNEL_CONFIG(ndev)->vlddes == 0 ) {

        IFX_REG_W32_MASK(0, 1 << ndev, MBOX_IGU1_ISRC);

        if ( WRX_DMA_CHANNEL_CONFIG(ndev)->vlddes == 0 ) {
            napi_complete(napi);
            IFX_REG_W32_MASK(0, 1 << ndev, MBOX_IGU1_IER);
            return work_done;
        }
    }


    return work_done;
}
