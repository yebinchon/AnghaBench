
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* on_head ) (TYPE_2__*,char const*,int ,int ,int ,int *,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ _cb; } ;
struct st_h2o_http3client_req_t {TYPE_2__ super; } ;


 int h2o_iovec_init (int *,int ) ;
 int stub1 (TYPE_2__*,char const*,int ,int ,int ,int *,int ,int ) ;

__attribute__((used)) static void on_error_before_head(struct st_h2o_http3client_req_t *req, const char *errstr)
{
    req->super._cb.on_head(&req->super, errstr, 0, 0, h2o_iovec_init(((void*)0), 0), ((void*)0), 0, 0);
}
