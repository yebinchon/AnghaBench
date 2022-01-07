
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_18__ {scalar_t__ len; scalar_t__ base; } ;
struct TYPE_19__ {TYPE_3__ path_normalized; } ;
typedef TYPE_4__ h2o_req_t ;
struct TYPE_20__ {int type; } ;
typedef TYPE_5__ h2o_mimemap_type_t ;
struct TYPE_21__ {scalar_t__ len; } ;
typedef TYPE_6__ h2o_iovec_t ;
struct TYPE_17__ {size_t len; } ;
struct TYPE_16__ {int len; } ;
struct TYPE_22__ {TYPE_2__ real_path; TYPE_1__ conf_path; int mimemap; } ;
typedef TYPE_7__ h2o_file_handler_t ;




 int S_ISDIR (int ) ;
 int delegate_dynamic_request (TYPE_4__*,TYPE_6__,TYPE_6__,char*,size_t,TYPE_5__*) ;
 int h2o_fatal (char*,int) ;
 int h2o_get_filext (char*,size_t) ;
 TYPE_6__ h2o_iovec_init (scalar_t__,scalar_t__) ;
 TYPE_5__* h2o_mimemap_get_type_by_extension (int ,int ) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int try_dynamic_request(h2o_file_handler_t *self, h2o_req_t *req, char *rpath, size_t rpath_len)
{

    struct stat st;
    size_t slash_at = self->real_path.len;

    while (1) {

        for (++slash_at;; ++slash_at) {
            if (slash_at >= rpath_len)
                return -1;
            if (rpath[slash_at] == '/')
                break;
        }

        rpath[slash_at] = '\0';
        if (stat(rpath, &st) != 0)
            return -1;
        if (!S_ISDIR(st.st_mode))
            break;

        rpath[slash_at] = '/';
    }


    h2o_mimemap_type_t *mime_type = h2o_mimemap_get_type_by_extension(self->mimemap, h2o_get_filext(rpath, slash_at));
    switch (mime_type->type) {
    case 128:
        return -1;
    case 129: {
        h2o_iovec_t script_name = h2o_iovec_init(req->path_normalized.base, self->conf_path.len + slash_at - self->real_path.len);
        h2o_iovec_t path_info =
            h2o_iovec_init(req->path_normalized.base + script_name.len, req->path_normalized.len - script_name.len);
        return delegate_dynamic_request(req, script_name, path_info, rpath, slash_at, mime_type);
    }
    }
    h2o_fatal("unknown h2o_miemmap_type_t::type (%d)\n", (int)mime_type->type);
}
