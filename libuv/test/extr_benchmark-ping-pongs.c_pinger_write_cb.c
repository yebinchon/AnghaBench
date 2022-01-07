
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 int free (int *) ;

__attribute__((used)) static void pinger_write_cb(uv_write_t* req, int status) {
  ASSERT(status == 0);

  free(req);
}
