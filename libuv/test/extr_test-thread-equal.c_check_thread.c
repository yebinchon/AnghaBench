
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_thread_t ;


 int ASSERT (int) ;
 int main_thread_id ;
 scalar_t__ uv_thread_equal (int *,int *) ;
 int uv_thread_self () ;

__attribute__((used)) static void check_thread(void* arg) {
  uv_thread_t *thread_id = arg;
  uv_thread_t self_id = uv_thread_self();
  ASSERT(uv_thread_equal(&main_thread_id, &self_id) == 0);
  *thread_id = uv_thread_self();
}
