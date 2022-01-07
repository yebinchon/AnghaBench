
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int UV__PATH_MAX ;
 int _PC_PATH_MAX ;
 int pathconf (char const*,int ) ;

__attribute__((used)) static ssize_t uv__fs_pathmax_size(const char* path) {
  ssize_t pathmax;

  pathmax = pathconf(path, _PC_PATH_MAX);

  if (pathmax == -1)
    pathmax = UV__PATH_MAX;

  return pathmax;
}
