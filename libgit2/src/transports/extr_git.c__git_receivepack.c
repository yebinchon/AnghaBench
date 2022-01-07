
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* current_stream; } ;
typedef TYPE_2__ git_subtransport ;
typedef int git_smart_subtransport_stream ;
struct TYPE_4__ {int parent; } ;


 int GIT_ERROR_NET ;
 int GIT_UNUSED (char const*) ;
 int git_error_set (int ,char*) ;

__attribute__((used)) static int _git_receivepack(
 git_subtransport *t,
 const char *url,
 git_smart_subtransport_stream **stream)
{
 GIT_UNUSED(url);

 if (t->current_stream) {
  *stream = &t->current_stream->parent;
  return 0;
 }

 git_error_set(GIT_ERROR_NET, "must call RECEIVEPACK_LS before RECEIVEPACK");
 return -1;
}
