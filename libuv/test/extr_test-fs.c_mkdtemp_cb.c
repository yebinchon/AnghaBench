
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 int ASSERT (int) ;
 int check_mkdtemp_result (int *) ;
 int mkdtemp_cb_count ;
 int mkdtemp_req1 ;

__attribute__((used)) static void mkdtemp_cb(uv_fs_t* req) {
  ASSERT(req == &mkdtemp_req1);
  check_mkdtemp_result(req);
  mkdtemp_cb_count++;
}
