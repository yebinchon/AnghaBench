
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int uv_fs_event_cb ;


 size_t ARRAY_SIZE (int *) ;
 int ASSERT (int) ;
 int * fs_event ;
 scalar_t__* fs_event_cbs ;
 int uv_fs_event_init (int *,int *) ;
 int uv_fs_event_start (int *,int ,int ,int ) ;
 int watched_dir ;

__attribute__((used)) static void init_and_start_fs_events(uv_loop_t* loop) {
  size_t i;
  for (i = 0; i < ARRAY_SIZE(fs_event); i++) {
    int r;
    r = uv_fs_event_init(loop, &fs_event[i]);
    ASSERT(r == 0);

    r = uv_fs_event_start(&fs_event[i],
                          (uv_fs_event_cb)fs_event_cbs[i],
                          watched_dir,
                          0);
    ASSERT(r == 0);
  }
}
