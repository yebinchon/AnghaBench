
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verify_static_content (char const*) ;

__attribute__((used)) static int
is_static (const char *req)
{
  return verify_static_content (req);
}
