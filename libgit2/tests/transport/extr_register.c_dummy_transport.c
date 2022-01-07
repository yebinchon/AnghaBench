
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_transport ;
typedef void git_remote ;


 int GIT_UNUSED (void*) ;
 int _transport ;

__attribute__((used)) static int dummy_transport(git_transport **transport, git_remote *owner, void *param)
{
 *transport = &_transport;
 GIT_UNUSED(owner);
 GIT_UNUSED(param);
 return 0;
}
