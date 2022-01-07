
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int CREATE_TIMEOUT ;
 int create_file (int ) ;
 scalar_t__ fs_event_created ;
 scalar_t__ fs_event_file_count ;
 int fs_event_get_filename (scalar_t__) ;
 int timer ;
 scalar_t__ uv_timer_start (int *,void (*) (int *),int ,int ) ;

__attribute__((used)) static void fs_event_create_files(uv_timer_t* handle) {

  ASSERT(fs_event_created < fs_event_file_count);


  create_file(fs_event_get_filename(fs_event_created));

  if (++fs_event_created < fs_event_file_count) {


    ASSERT(0 == uv_timer_start(&timer,
                               fs_event_create_files,
                               CREATE_TIMEOUT,
                               0));
  }
}
