
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
typedef int git_dir_flag ;
struct TYPE_6__ {char* ptr; int size; } ;
struct TYPE_5__ {char* path; char* basename; int is_dir; TYPE_2__ full; } ;
typedef TYPE_1__ git_attr_path ;





 int git_buf_init (TYPE_2__*,int ) ;
 scalar_t__ git_path_isdir (char*) ;
 scalar_t__ git_path_join_unrooted (TYPE_2__*,char const*,char const*,int*) ;
 char* strrchr (char*,char) ;

int git_attr_path__init(
 git_attr_path *info, const char *path, const char *base, git_dir_flag dir_flag)
{
 ssize_t root;


 git_buf_init(&info->full, 0);

 if (git_path_join_unrooted(&info->full, path, base, &root) < 0)
  return -1;

 info->path = info->full.ptr + root;


 while (info->full.size > 0) {
  if (info->full.ptr[info->full.size - 1] != '/')
   break;
  info->full.size--;
 }
 info->full.ptr[info->full.size] = '\0';


 while (*info->path == '/')
  info->path++;


 info->basename = strrchr(info->path, '/');
 if (info->basename)
  info->basename++;
 if (!info->basename || !*info->basename)
  info->basename = info->path;

 switch (dir_flag)
 {
 case 130:
  info->is_dir = 0;
  break;

 case 129:
  info->is_dir = 1;
  break;

 case 128:
 default:
  info->is_dir = (int)git_path_isdir(info->full.ptr);
  break;
 }

 return 0;
}
