
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int uv_get_process_title (char*,int) ;

__attribute__((used)) static void uv_get_process_title_edge_cases(void) {
  char buffer[512];
  int r;


  r = uv_get_process_title(((void*)0), 100);
  ASSERT(r == UV_EINVAL);


  r = uv_get_process_title(buffer, 0);
  ASSERT(r == UV_EINVAL);


  r = uv_get_process_title(buffer, 1);
  ASSERT(r == UV_ENOBUFS);
}
