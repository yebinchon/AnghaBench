
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int ijkio_manager_ctx; } ;
typedef TYPE_1__ FFPlayer ;




 int ijkio_manager_did_share_cache_map (int ) ;
 int ijkio_manager_immediate_reconnect (int ) ;
 int ijkio_manager_will_share_cache_map (int ) ;

void ffp_set_property_int64(FFPlayer *ffp, int id, int64_t value)
{
    switch (id) {


        case 128:
            if (ffp) {
                if (value) {
                    ijkio_manager_will_share_cache_map(ffp->ijkio_manager_ctx);
                } else {
                    ijkio_manager_did_share_cache_map(ffp->ijkio_manager_ctx);
                }
            }
            break;
        case 129:
            if (ffp) {
                ijkio_manager_immediate_reconnect(ffp->ijkio_manager_ctx);
            }
        default:
            break;
    }
}
