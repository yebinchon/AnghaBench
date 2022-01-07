
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int free_write_req (int *) ;

void on_stdout_write(uv_write_t *req, int status) {
    free_write_req(req);
}
