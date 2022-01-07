
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
typedef int pid_t ;


 int ASSERT (int) ;
 int FS_TEST_FILE ;
 int MAKE_VALGRIND_HAPPY () ;
 int assert_wait_child (int) ;
 int assert_watch_file_current_dir (int *,int) ;
 int fork () ;
 int printf (char*) ;
 int * uv_default_loop () ;
 scalar_t__ uv_loop_close (int *) ;
 scalar_t__ uv_loop_fork (int *) ;
 int uv_loop_init (int *) ;
 int uv_update_time (int *) ;

__attribute__((used)) static int _do_fork_fs_events_child(int file_or_dir) {

  pid_t child_pid;
  uv_loop_t loop;


  assert_watch_file_current_dir(uv_default_loop(), file_or_dir);
  child_pid = fork();
  ASSERT(child_pid != -1);

  if (child_pid != 0) {

    assert_wait_child(child_pid);
  } else {






    printf("Running child\n");
    uv_loop_init(&loop);
    printf("Child first watch\n");
    assert_watch_file_current_dir(&loop, file_or_dir);
    ASSERT(0 == uv_loop_close(&loop));
    printf("Child second watch default loop\n");

    ASSERT(0 == uv_loop_fork(uv_default_loop()));





    uv_update_time(uv_default_loop());
    assert_watch_file_current_dir(uv_default_loop(), file_or_dir);





    ASSERT(0 == uv_loop_close(uv_default_loop()));

    printf("Exiting child \n");
  }

  MAKE_VALGRIND_HAPPY();
  return 0;

}
