
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int count_cb(const char *reference_name, void *payload)
{
 int *count = (int *)payload;

 GIT_UNUSED(reference_name);

 (*count)++;

 return 0;
}
