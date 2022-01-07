
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int base; } ;
struct st_h2o_specific_file_handler_t {int mime_type; TYPE_1__ real_path; int flags; } ;
struct st_h2o_sendfile_generator_t {int dummy; } ;
struct TYPE_9__ {int path_normalized; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_handler_t ;


 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 scalar_t__ ENOENT ;
 struct st_h2o_sendfile_generator_t* create_generator (TYPE_2__*,int ,int ,int*,int ) ;
 scalar_t__ errno ;
 int h2o_send_error_403 (TYPE_2__*,char*,char*,int ) ;
 int h2o_send_error_503 (TYPE_2__*,char*,char*,int ) ;
 int serve_with_generator (struct st_h2o_sendfile_generator_t*,TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static int specific_handler_on_req(h2o_handler_t *_self, h2o_req_t *req)
{
    struct st_h2o_specific_file_handler_t *self = (void *)_self;
    struct st_h2o_sendfile_generator_t *generator;
    int is_dir;


    if ((generator = create_generator(req, self->real_path.base, self->real_path.len, &is_dir, self->flags)) == ((void*)0)) {
        if (is_dir) {
            h2o_send_error_403(req, "Access Forbidden", "access forbidden", 0);
        } else if (errno == ENOENT) {
            return -1;
        } else if (errno == ENFILE || errno == EMFILE) {
            h2o_send_error_503(req, "Service Unavailable", "please try again later", 0);
        } else {
            h2o_send_error_403(req, "Access Forbidden", "access forbidden", 0);
        }
        return 0;
    }

    return serve_with_generator(generator, req, req->path_normalized, self->real_path.base, self->real_path.len, self->mime_type);
}
