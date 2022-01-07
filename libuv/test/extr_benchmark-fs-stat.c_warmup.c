
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_fs_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int MAX_CONCURRENT_REQS ;
 int UV_RUN_DEFAULT ;
 int sync_stat (int *,char const*) ;
 int uv_default_loop () ;
 int uv_fs_req_cleanup ;
 int uv_fs_stat (int ,int *,char const*,int ) ;
 int uv_run (int ,int ) ;

__attribute__((used)) static void warmup(const char* path) {
  uv_fs_t reqs[MAX_CONCURRENT_REQS];
  unsigned int i;


  for (i = 0; i < ARRAY_SIZE(reqs); i++)
    uv_fs_stat(uv_default_loop(), reqs + i, path, uv_fs_req_cleanup);

  uv_run(uv_default_loop(), UV_RUN_DEFAULT);


  for (i = 0; i < 16; i++)
    sync_stat(reqs + 0, path);
}
