
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct st_h2o_http3client_req_t {int (* handle_input ) (struct st_h2o_http3client_req_t*,int const**,int const*,int,char const**) ;} ;


 int stub1 (struct st_h2o_http3client_req_t*,int const**,int const*,int,char const**) ;

__attribute__((used)) static void handle_input_error(struct st_h2o_http3client_req_t *req, int err)
{
    const uint8_t *src = ((void*)0), *src_end = ((void*)0);
    const char *err_desc = ((void*)0);
    req->handle_input(req, &src, src_end, err, &err_desc);
}
