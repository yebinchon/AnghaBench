
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_work_t ;


 int ASSERT (int *) ;

__attribute__((used)) static void work_cb(uv_work_t* req) {
  ASSERT(req);
}
