
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int is_dirty_cb(const char *path, unsigned int status, void *payload)
{
 GIT_UNUSED(path);
 GIT_UNUSED(status);
 GIT_UNUSED(payload);

 return GIT_PASSTHROUGH;
}
