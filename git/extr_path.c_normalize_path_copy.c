
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int normalize_path_copy_len (char*,char const*,int *) ;

int normalize_path_copy(char *dst, const char *src)
{
 return normalize_path_copy_len(dst, src, ((void*)0));
}
