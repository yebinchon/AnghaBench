
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct ftpm_tee_private {int ctx; int session; int shm; TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 struct ftpm_tee_private* dev_get_drvdata (int *) ;
 int put_device (int *) ;
 int tee_client_close_context (int ) ;
 int tee_client_close_session (int ,int ) ;
 int tee_shm_free (int ) ;
 int tpm_chip_unregister (TYPE_1__*) ;

__attribute__((used)) static int ftpm_tee_remove(struct platform_device *pdev)
{
 struct ftpm_tee_private *pvt_data = dev_get_drvdata(&pdev->dev);


 tpm_chip_unregister(pvt_data->chip);


 put_device(&pvt_data->chip->dev);


 tee_shm_free(pvt_data->shm);


 tee_client_close_session(pvt_data->ctx, pvt_data->session);


 tee_client_close_context(pvt_data->ctx);



 return 0;
}
