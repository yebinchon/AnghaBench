
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filespec {char* path; } ;


 int strlen (char*) ;

__attribute__((used)) static int basename_same(struct diff_filespec *src, struct diff_filespec *dst)
{
 int src_len = strlen(src->path), dst_len = strlen(dst->path);
 while (src_len && dst_len) {
  char c1 = src->path[--src_len];
  char c2 = dst->path[--dst_len];
  if (c1 != c2)
   return 0;
  if (c1 == '/')
   return 1;
 }
 return (!src_len || src->path[src_len - 1] == '/') &&
  (!dst_len || dst->path[dst_len - 1] == '/');
}
