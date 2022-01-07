
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int ctx; int session_id; int optee_rng; } ;


 int hwrng_unregister (int *) ;
 TYPE_1__ pvt_data ;
 int tee_client_close_context (int ) ;
 int tee_client_close_session (int ,int ) ;

__attribute__((used)) static int optee_rng_remove(struct device *dev)
{
 hwrng_unregister(&pvt_data.optee_rng);
 tee_client_close_session(pvt_data.ctx, pvt_data.session_id);
 tee_client_close_context(pvt_data.ctx);

 return 0;
}
