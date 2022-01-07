
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_loop_t ;
struct test_thread {int thread_called; } ;
struct getaddrinfo_req {int counter; int * loop; } ;
struct fs_req {int counter; int * loop; } ;


 size_t ARRAY_SIZE (struct getaddrinfo_req*) ;
 int ASSERT (int) ;
 int UV_RUN_DEFAULT ;
 int fs_do (struct getaddrinfo_req*) ;
 int getaddrinfo_do (struct getaddrinfo_req*) ;
 scalar_t__ uv_loop_close (int *) ;
 scalar_t__ uv_loop_init (int *) ;
 scalar_t__ uv_run (int *,int ) ;

__attribute__((used)) static void do_work(void* arg) {
  struct getaddrinfo_req getaddrinfo_reqs[4];
  struct fs_req fs_reqs[4];
  uv_loop_t loop;
  size_t i;
  struct test_thread* thread = arg;

  ASSERT(0 == uv_loop_init(&loop));

  for (i = 0; i < ARRAY_SIZE(getaddrinfo_reqs); i++) {
    struct getaddrinfo_req* req = getaddrinfo_reqs + i;
    req->counter = 4;
    req->loop = &loop;
    getaddrinfo_do(req);
  }

  for (i = 0; i < ARRAY_SIZE(fs_reqs); i++) {
    struct fs_req* req = fs_reqs + i;
    req->counter = 4;
    req->loop = &loop;
    fs_do(req);
  }

  ASSERT(0 == uv_run(&loop, UV_RUN_DEFAULT));
  ASSERT(0 == uv_loop_close(&loop));
  thread->thread_called = 1;
}
