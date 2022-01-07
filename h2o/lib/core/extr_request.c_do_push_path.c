
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* conn; } ;
typedef TYPE_3__ h2o_req_t ;
struct TYPE_6__ {TYPE_1__* callbacks; } ;
struct TYPE_5__ {int (* push_path ) (TYPE_3__*,char const*,size_t,int) ;} ;


 int stub1 (TYPE_3__*,char const*,size_t,int) ;

__attribute__((used)) static void do_push_path(void *_req, const char *path, size_t path_len, int is_critical)
{
    h2o_req_t *req = _req;

    if (req->conn->callbacks->push_path != ((void*)0))
        req->conn->callbacks->push_path(req, path, path_len, is_critical);
}
