
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hashwrite (void*,void const*,size_t) ;

__attribute__((used)) static int hashwrite_ewah_helper(void *f, const void *buf, size_t len)
{

 hashwrite(f, buf, len);
 return len;
}
