
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OVERLAPPED ;


 int overlapped_dummy_ ;
 int overlapped_dummy_init_guard_ ;
 int uv__init_overlapped_dummy ;
 int uv_once (int *,int ) ;

__attribute__((used)) static OVERLAPPED* uv__get_overlapped_dummy(void) {
  uv_once(&overlapped_dummy_init_guard_, uv__init_overlapped_dummy);
  return &overlapped_dummy_;
}
