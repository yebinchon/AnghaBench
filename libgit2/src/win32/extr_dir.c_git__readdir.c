
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct git__dirent {int dummy; } ;
struct TYPE_4__ {int entry; } ;
typedef TYPE_1__ git__DIR ;


 scalar_t__ git__readdir_ext (TYPE_1__*,int *,struct git__dirent**,int *) ;

struct git__dirent *git__readdir(git__DIR *d)
{
 struct git__dirent *result;
 if (git__readdir_ext(d, &d->entry, &result, ((void*)0)) < 0)
  return ((void*)0);
 return result;
}
