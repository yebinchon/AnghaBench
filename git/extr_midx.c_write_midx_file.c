
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write_midx_internal (char const*,int *,int *,unsigned int) ;

int write_midx_file(const char *object_dir, unsigned flags)
{
 return write_midx_internal(object_dir, ((void*)0), ((void*)0), flags);
}
