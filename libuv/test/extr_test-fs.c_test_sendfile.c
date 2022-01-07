
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uv_fs_cb ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ off_t ;
struct TYPE_7__ {scalar_t__ result; } ;


 int ASSERT (int) ;
 int MAKE_VALGRIND_HAPPY () ;
 int O_CREAT ;
 int O_RDWR ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int UV_RUN_DEFAULT ;
 int close (int) ;
 TYPE_1__ close_req ;
 int loop ;
 int open (char*,int,int) ;
 TYPE_1__ open_req1 ;
 TYPE_1__ open_req2 ;
 int sendfile_cb_count ;
 int sendfile_req ;
 scalar_t__ stat (char*,struct stat*) ;
 int unlink (char*) ;
 int uv_default_loop () ;
 int uv_fs_close (int *,TYPE_1__*,scalar_t__,int *) ;
 int uv_fs_open (int *,TYPE_1__*,char*,int,int,int *) ;
 int uv_fs_req_cleanup (TYPE_1__*) ;
 int uv_fs_sendfile (int ,int *,scalar_t__,scalar_t__,int ,int,int ) ;
 int uv_run (int ,int ) ;

__attribute__((used)) static int test_sendfile(void (*setup)(int), uv_fs_cb cb, off_t expected_size) {
  int f, r;
  struct stat s1, s2;

  loop = uv_default_loop();


  unlink("test_file");
  unlink("test_file2");

  f = open("test_file", O_WRONLY | O_CREAT, S_IWUSR | S_IRUSR);
  ASSERT(f != -1);

  if (setup != ((void*)0))
    setup(f);

  r = close(f);
  ASSERT(r == 0);


  r = uv_fs_open(((void*)0), &open_req1, "test_file", O_RDWR, 0, ((void*)0));
  ASSERT(r >= 0);
  ASSERT(open_req1.result >= 0);
  uv_fs_req_cleanup(&open_req1);

  r = uv_fs_open(((void*)0), &open_req2, "test_file2", O_WRONLY | O_CREAT,
      S_IWUSR | S_IRUSR, ((void*)0));
  ASSERT(r >= 0);
  ASSERT(open_req2.result >= 0);
  uv_fs_req_cleanup(&open_req2);

  r = uv_fs_sendfile(loop, &sendfile_req, open_req2.result, open_req1.result,
      0, 131072, cb);
  ASSERT(r == 0);
  uv_run(loop, UV_RUN_DEFAULT);

  ASSERT(sendfile_cb_count == 1);

  r = uv_fs_close(((void*)0), &close_req, open_req1.result, ((void*)0));
  ASSERT(r == 0);
  uv_fs_req_cleanup(&close_req);
  r = uv_fs_close(((void*)0), &close_req, open_req2.result, ((void*)0));
  ASSERT(r == 0);
  uv_fs_req_cleanup(&close_req);

  ASSERT(0 == stat("test_file", &s1));
  ASSERT(0 == stat("test_file2", &s2));
  ASSERT(s1.st_size == s2.st_size);
  ASSERT(s2.st_size == expected_size);


  unlink("test_file");
  unlink("test_file2");

  MAKE_VALGRIND_HAPPY();
  return 0;
}
