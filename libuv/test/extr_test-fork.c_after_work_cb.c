
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;


 int ASSERT (int) ;
 int after_work_cb_count ;

__attribute__((used)) static void after_work_cb(uv_work_t* req, int status) {
  ASSERT(status == 0);
  after_work_cb_count++;
}
