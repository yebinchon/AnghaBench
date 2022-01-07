
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_fcgi_generator_t {int * req; scalar_t__ sent_headers; } ;
typedef int h2o_req_t ;


 int close_generator (struct st_fcgi_generator_t*) ;
 int h2o_send_error_503 (int *,char*,char*,int ) ;
 int send_eos_and_close (struct st_fcgi_generator_t*,int ) ;

__attribute__((used)) static void errorclose(struct st_fcgi_generator_t *generator)
{
    if (generator->sent_headers) {
        send_eos_and_close(generator, 0);
    } else {
        h2o_req_t *req = generator->req;
        close_generator(generator);
        h2o_send_error_503(req, "Internal Server Error", "Internal Server Error", 0);
    }
}
