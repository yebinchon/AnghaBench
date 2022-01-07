
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct replay_opts {scalar_t__ action; TYPE_1__* revs; } ;
struct TYPE_2__ {int reverse; int no_walk; } ;


 scalar_t__ REPLAY_PICK ;
 int _ (char*) ;
 int error (int ) ;
 scalar_t__ prepare_revision_walk (TYPE_1__*) ;

__attribute__((used)) static int prepare_revs(struct replay_opts *opts)
{




 if (opts->action == REPLAY_PICK && !opts->revs->no_walk)
  opts->revs->reverse ^= 1;

 if (prepare_revision_walk(opts->revs))
  return error(_("revision walk setup failed"));

 return 0;
}
