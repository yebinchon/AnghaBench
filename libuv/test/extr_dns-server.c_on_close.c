
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_t ;


 int free (int *) ;

__attribute__((used)) static void on_close(uv_handle_t* peer) {
  free(peer);
}
