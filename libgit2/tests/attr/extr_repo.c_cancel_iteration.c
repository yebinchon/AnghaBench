
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CANCEL_VALUE ;
 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int cancel_iteration(
 const char *name,
 const char *value,
 void *payload)
{
 GIT_UNUSED(name);
 GIT_UNUSED(value);

 *((int *)payload) -= 1;

 if (*((int *)payload) < 0)
  return CANCEL_VALUE;

 return 0;
}
