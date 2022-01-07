
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; scalar_t__ contents; } ;
struct TYPE_4__ {TYPE_1__ refs; int have_refs; } ;
typedef TYPE_2__ transport_local ;
typedef int git_transport ;
typedef int git_remote_head ;


 int GIT_ERROR_NET ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int local_ls(const git_remote_head ***out, size_t *size, git_transport *transport)
{
 transport_local *t = (transport_local *)transport;

 if (!t->have_refs) {
  git_error_set(GIT_ERROR_NET, "the transport has not yet loaded the refs");
  return -1;
 }

 *out = (const git_remote_head **)t->refs.contents;
 *size = t->refs.length;

 return 0;
}
