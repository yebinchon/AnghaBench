
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_UNUSED (void*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int cmp_str(const void *_a, const void *_b, void *payload)
{
 GIT_UNUSED(payload);
 return strcmp((const char *) _a, (const char *) _b);
}
