
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_sendfile_generator_t {int dummy; } ;
typedef int h2o_req_t ;
typedef int h2o_iovec_t ;


 struct st_h2o_sendfile_generator_t* create_generator (int *,char const*,int ,int*,int) ;
 int do_send_file (struct st_h2o_sendfile_generator_t*,int *,int,char const*,int ,int *,int) ;
 int strlen (char const*) ;

int h2o_file_send(h2o_req_t *req, int status, const char *reason, const char *path, h2o_iovec_t mime_type, int flags)
{
    struct st_h2o_sendfile_generator_t *self;
    int is_dir;

    if ((self = create_generator(req, path, strlen(path), &is_dir, flags)) == ((void*)0))
        return -1;

    do_send_file(self, req, status, reason, mime_type, ((void*)0), 1);
    return 0;
}
