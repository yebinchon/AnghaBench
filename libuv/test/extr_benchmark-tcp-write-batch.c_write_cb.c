
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 int write_cb_called ;

__attribute__((used)) static void write_cb(uv_write_t* req, int status) {
  ASSERT(req != ((void*)0));
  ASSERT(status == 0);
  write_cb_called++;
}
