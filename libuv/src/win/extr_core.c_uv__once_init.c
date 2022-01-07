
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uv_init ;
 int uv_init_guard_ ;
 int uv_once (int *,int ) ;

void uv__once_init(void) {
  uv_once(&uv_init_guard_, uv_init);
}
