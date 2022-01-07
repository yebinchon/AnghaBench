
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct st_h2o_tunnel_t {int timeout_entry; int timeout; TYPE_1__* ctx; } ;
struct TYPE_2__ {int loop; } ;


 int h2o_timer_link (int ,int ,int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static inline void reset_timeout(struct st_h2o_tunnel_t *tunnel)
{
    h2o_timer_unlink(&tunnel->timeout_entry);
    h2o_timer_link(tunnel->ctx->loop, tunnel->timeout, &tunnel->timeout_entry);
}
