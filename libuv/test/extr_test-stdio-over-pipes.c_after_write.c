
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int ) ;
 int after_write_cb_called ;
 int fprintf (int ,char*,char*) ;
 int free (int *) ;
 int stderr ;
 char* uv_strerror (int) ;

__attribute__((used)) static void after_write(uv_write_t* req, int status) {
  if (status) {
    fprintf(stderr, "uv_write error: %s\n", uv_strerror(status));
    ASSERT(0);
  }


  free(req);

  after_write_cb_called++;
}
