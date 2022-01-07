
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int ASSERT (int) ;
 int fs_event_file_count ;
 int fs_event_get_filename (int) ;
 int fs_event_removed ;
 int remove (int ) ;
 int timer ;
 scalar_t__ uv_timer_start (int *,void (*) (int *),int,int ) ;

__attribute__((used)) static void fs_event_unlink_files(uv_timer_t* handle) {
  int r;
  int i;


  if (handle == ((void*)0)) {

    for (i = 0; i < 16; i++) {
      r = remove(fs_event_get_filename(i));
      if (handle != ((void*)0))
        ASSERT(r == 0);
    }
  } else {

    ASSERT(fs_event_removed < fs_event_file_count);


    ASSERT(0 == remove(fs_event_get_filename(fs_event_removed)));

    if (++fs_event_removed < fs_event_file_count) {


      ASSERT(0 == uv_timer_start(&timer, fs_event_unlink_files, 1, 0));
    }
  }
}
