
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_write_t ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int ASSERT (int) ;
 int LARGE_SIZE ;
 int closed_handle_data_read ;
 int send_handle_and_close () ;
 int write_reqs ;
 scalar_t__ write_reqs_completed ;
 scalar_t__ write_until_data_queued () ;

__attribute__((used)) static void closed_handle_large_write_cb(uv_write_t* req, int status) {
  ASSERT(status == 0);
  ASSERT(closed_handle_data_read = LARGE_SIZE);
  if (++write_reqs_completed == ARRAY_SIZE(write_reqs)) {
    write_reqs_completed = 0;
    if (write_until_data_queued() > 0)
      send_handle_and_close();
  }
}
