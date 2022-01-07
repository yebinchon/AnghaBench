
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promisor_remote {int dummy; } ;


 int git_config (int ,int *) ;
 int initialized ;
 int promisor_remote_config ;
 struct promisor_remote* promisor_remote_lookup (scalar_t__,struct promisor_remote**) ;
 int promisor_remote_move_to_tail (struct promisor_remote*,struct promisor_remote*) ;
 int promisor_remote_new (scalar_t__) ;
 scalar_t__ repository_format_partial_clone ;

__attribute__((used)) static void promisor_remote_init(void)
{
 if (initialized)
  return;
 initialized = 1;

 git_config(promisor_remote_config, ((void*)0));

 if (repository_format_partial_clone) {
  struct promisor_remote *o, *previous;

  o = promisor_remote_lookup(repository_format_partial_clone,
        &previous);
  if (o)
   promisor_remote_move_to_tail(o, previous);
  else
   promisor_remote_new(repository_format_partial_clone);
 }
}
