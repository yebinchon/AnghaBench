
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_dir_sep (char const) ;

__attribute__((used)) static inline int git_offset_1st_component(const char *path)
{
 return is_dir_sep(path[0]);
}
