
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 int ASSERT (int) ;
 int after_write_called ;

__attribute__((used)) static void after_pipe_write(uv_write_t* req, int status) {
  ASSERT(status == 0);
  after_write_called++;
}
