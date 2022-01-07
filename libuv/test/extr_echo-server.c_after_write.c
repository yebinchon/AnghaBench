
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* base; } ;
struct TYPE_5__ {TYPE_1__ buf; } ;
typedef TYPE_2__ write_req_t ;
typedef int uv_write_t ;


 int fprintf (int ,char*,char*,char*) ;
 int free (TYPE_2__*) ;
 int stderr ;
 char* uv_err_name (int) ;
 char* uv_strerror (int) ;

__attribute__((used)) static void after_write(uv_write_t* req, int status) {
  write_req_t* wr;


  wr = (write_req_t*) req;
  free(wr->buf.base);
  free(wr);

  if (status == 0)
    return;

  fprintf(stderr,
          "uv_write error: %s - %s\n",
          uv_err_name(status),
          uv_strerror(status));
}
