
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_name; } ;
typedef TYPE_1__ UV_CONST_DIRENT ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int uv__fs_scandir_sort(UV_CONST_DIRENT** a, UV_CONST_DIRENT** b) {
  return strcmp((*a)->d_name, (*b)->d_name);
}
