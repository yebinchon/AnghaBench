
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ speed; } ;
typedef TYPE_1__ uv_cpu_info_t ;
typedef int FILE ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 int UV_ENOMEM ;
 int UV__ERR (scalar_t__) ;
 int abort () ;
 scalar_t__ errno ;
 scalar_t__ fclose (int *) ;
 int read_models (unsigned int,TYPE_1__*) ;
 int read_speeds (unsigned int,TYPE_1__*) ;
 int read_times (int *,unsigned int,TYPE_1__*) ;
 TYPE_1__* uv__calloc (unsigned int,int) ;
 int uv__cpu_num (int *,unsigned int*) ;
 int * uv__open_file (char*) ;
 int uv_free_cpu_info (TYPE_1__*,unsigned int) ;

int uv_cpu_info(uv_cpu_info_t** cpu_infos, int* count) {
  unsigned int numcpus;
  uv_cpu_info_t* ci;
  int err;
  FILE* statfile_fp;

  *cpu_infos = ((void*)0);
  *count = 0;

  statfile_fp = uv__open_file("/proc/stat");
  if (statfile_fp == ((void*)0))
    return UV__ERR(errno);

  err = uv__cpu_num(statfile_fp, &numcpus);
  if (err < 0)
    goto out;

  err = UV_ENOMEM;
  ci = uv__calloc(numcpus, sizeof(*ci));
  if (ci == ((void*)0))
    goto out;

  err = read_models(numcpus, ci);
  if (err == 0)
    err = read_times(statfile_fp, numcpus, ci);

  if (err) {
    uv_free_cpu_info(ci, numcpus);
    goto out;
  }




  if (ci[0].speed == 0)
    read_speeds(numcpus, ci);

  *cpu_infos = ci;
  *count = numcpus;
  err = 0;

out:

  if (fclose(statfile_fp))
    if (errno != EINTR && errno != EINPROGRESS)
      abort();

  return err;
}
