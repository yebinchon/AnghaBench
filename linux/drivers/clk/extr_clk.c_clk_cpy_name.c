
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup_const (char const*,int ) ;

__attribute__((used)) static int clk_cpy_name(const char **dst_p, const char *src, bool must_exist)
{
 const char *dst;

 if (!src) {
  if (must_exist)
   return -EINVAL;
  return 0;
 }

 *dst_p = dst = kstrdup_const(src, GFP_KERNEL);
 if (!dst)
  return -ENOMEM;

 return 0;
}
