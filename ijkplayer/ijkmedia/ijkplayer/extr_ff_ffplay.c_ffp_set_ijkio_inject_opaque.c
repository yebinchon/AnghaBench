
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {scalar_t__ ijkio_manager_ctx; void* ijkio_inject_opaque; } ;
typedef TYPE_1__ FFPlayer ;


 int FFP_OPT_CATEGORY_FORMAT ;
 int ffp_set_option_int (TYPE_1__*,int ,char*,int ) ;
 int ijkio_app_func_event ;
 int ijkio_manager_create (scalar_t__*,TYPE_1__*) ;
 int ijkio_manager_destroyp (scalar_t__*) ;
 int ijkio_manager_set_callback (scalar_t__,int ) ;

void *ffp_set_ijkio_inject_opaque(FFPlayer *ffp, void *opaque)
{
    if (!ffp)
        return ((void*)0);
    void *prev_weak_thiz = ffp->ijkio_inject_opaque;
    ffp->ijkio_inject_opaque = opaque;

    ijkio_manager_destroyp(&ffp->ijkio_manager_ctx);
    ijkio_manager_create(&ffp->ijkio_manager_ctx, ffp);
    ijkio_manager_set_callback(ffp->ijkio_manager_ctx, ijkio_app_func_event);
    ffp_set_option_int(ffp, FFP_OPT_CATEGORY_FORMAT, "ijkiomanager", (int64_t)(intptr_t)ffp->ijkio_manager_ctx);

    return prev_weak_thiz;
}
