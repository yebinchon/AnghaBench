
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dev; } ;


 int IFX_REG_W32_MASK (int ,int,int ) ;
 int MBOX_IGU1_IER ;
 int MBOX_IGU1_ISRC ;
 int napi_complete (struct napi_struct*) ;
 int netif_running (int ) ;
 unsigned int ptm_poll (int,int) ;

__attribute__((used)) static int ptm_napi_poll(struct napi_struct *napi, int budget)
{
    int ndev = 0;
    unsigned int work_done;

    work_done = ptm_poll(ndev, budget);


    if ( !netif_running(napi->dev) ) {
        napi_complete(napi);
        return work_done;
    }


    IFX_REG_W32_MASK(0, 1, MBOX_IGU1_ISRC);

    if (work_done < budget) {
 napi_complete(napi);
        IFX_REG_W32_MASK(0, 1, MBOX_IGU1_IER);
        return work_done;
    }


    return work_done;
}
