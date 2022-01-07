
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_stat_t ;
struct stat {int dummy; } ;


 int UV_ENOSYS ;
 int lstat (char const*,struct stat*) ;
 int uv__fs_statx (int,char const*,int ,int,int *) ;
 int uv__to_stat (struct stat*,int *) ;

__attribute__((used)) static int uv__fs_lstat(const char *path, uv_stat_t *buf) {
  struct stat pbuf;
  int ret;

  ret = uv__fs_statx(-1, path, 0, 1, buf);
  if (ret != UV_ENOSYS)
    return ret;

  ret = lstat(path, &pbuf);
  if (ret == 0)
    uv__to_stat(&pbuf, buf);

  return ret;
}
