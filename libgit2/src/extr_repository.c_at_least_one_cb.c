
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int at_least_one_cb(const char *refname, void *payload)
{
 GIT_UNUSED(refname);
 GIT_UNUSED(payload);
 return GIT_PASSTHROUGH;
}
