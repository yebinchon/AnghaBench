
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;
typedef int uint64_t ;


 int NUM_SYNC_REQS ;
 int fflush (int ) ;
 char* fmt (double) ;
 int printf (char*,char*,int,char*) ;
 int stdout ;
 int sync_stat (int *,char const*) ;
 int uv_hrtime () ;

__attribute__((used)) static void sync_bench(const char* path) {
  uint64_t before;
  uint64_t after;
  uv_fs_t req;
  int i;


  before = uv_hrtime();

  for (i = 0; i < NUM_SYNC_REQS; i++)
    sync_stat(&req, path);

  after = uv_hrtime();

  printf("%s stats (sync): %.2fs (%s/s)\n",
         fmt(1.0 * NUM_SYNC_REQS),
         (after - before) / 1e9,
         fmt((1.0 * NUM_SYNC_REQS) / ((after - before) / 1e9)));
  fflush(stdout);
}
