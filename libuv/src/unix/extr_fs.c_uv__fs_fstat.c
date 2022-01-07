
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stat_t ;
struct stat {int dummy; } ;


 int UV_ENOSYS ;
 int fstat (int,struct stat*) ;
 int uv__fs_statx (int,char*,int,int ,int *) ;
 int uv__to_stat (struct stat*,int *) ;

__attribute__((used)) static int uv__fs_fstat(int fd, uv_stat_t *buf) {
  struct stat pbuf;
  int ret;

  ret = uv__fs_statx(fd, "", 1, 0, buf);
  if (ret != UV_ENOSYS)
    return ret;

  ret = fstat(fd, &pbuf);
  if (ret == 0)
    uv__to_stat(&pbuf, buf);

  return ret;
}
