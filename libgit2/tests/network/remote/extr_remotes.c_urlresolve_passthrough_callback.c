
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_buf ;


 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int urlresolve_passthrough_callback(git_buf *url_resolved, const char *url, int direction, void *payload)
{
 GIT_UNUSED(url_resolved);
 GIT_UNUSED(url);
 GIT_UNUSED(direction);
 GIT_UNUSED(payload);
 return GIT_PASSTHROUGH;
}
