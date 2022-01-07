
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct async_req {char const* path; int* count; int fs_req; } ;


 int MAX_CONCURRENT_REQS ;
 double NUM_ASYNC_REQS ;
 int UV_RUN_DEFAULT ;
 int fflush (int ) ;
 char* fmt (double) ;
 int printf (char*,char*,int,int,char*) ;
 int stat_cb ;
 int stdout ;
 int uv_default_loop () ;
 int uv_fs_stat (int ,int *,char const*,int ) ;
 int uv_hrtime () ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void async_bench(const char* path) {
  struct async_req reqs[MAX_CONCURRENT_REQS];
  struct async_req* req;
  uint64_t before;
  uint64_t after;
  int count;
  int i;

  for (i = 1; i <= MAX_CONCURRENT_REQS; i++) {
    count = NUM_ASYNC_REQS;

    for (req = reqs; req < reqs + i; req++) {
      req->path = path;
      req->count = &count;
      uv_fs_stat(uv_default_loop(), &req->fs_req, req->path, stat_cb);
    }

    before = uv_hrtime();
    uv_run(uv_default_loop(), UV_RUN_DEFAULT);
    after = uv_hrtime();

    printf("%s stats (%d concurrent): %.2fs (%s/s)\n",
           fmt(1.0 * NUM_ASYNC_REQS),
           i,
           (after - before) / 1e9,
           fmt((1.0 * NUM_ASYNC_REQS) / ((after - before) / 1e9)));
    fflush(stdout);
  }
}
