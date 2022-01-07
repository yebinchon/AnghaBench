
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d_name; } ;
typedef TYPE_1__ UV_CONST_DIRENT ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int uv__fs_scandir_filter(UV_CONST_DIRENT* dent) {
  return strcmp(dent->d_name, ".") != 0 && strcmp(dent->d_name, "..") != 0;
}
