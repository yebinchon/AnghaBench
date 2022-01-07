
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_transport ;
struct TYPE_3__ {int member_1; void* member_2; int member_0; } ;
typedef TYPE_1__ git_smart_subtransport_definition ;
typedef int git_remote ;


 int fuzzer_subtransport_cb ;
 int git_transport_smart (int **,int *,TYPE_1__*) ;

int fuzzer_transport_cb(git_transport **out, git_remote *owner, void *param)
{
 git_smart_subtransport_definition def = {
  fuzzer_subtransport_cb,
  1,
  param
 };
 return git_transport_smart(out, owner, &def);
}
