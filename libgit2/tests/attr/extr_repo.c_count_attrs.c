
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int count_attrs(
 const char *name,
 const char *value,
 void *payload)
{
 GIT_UNUSED(name);
 GIT_UNUSED(value);

 *((int *)payload) += 1;

 return 0;
}
