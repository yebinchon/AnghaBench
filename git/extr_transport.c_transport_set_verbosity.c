
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int verbose; int progress; } ;


 scalar_t__ isatty (int) ;

void transport_set_verbosity(struct transport *transport, int verbosity,
 int force_progress)
{
 if (verbosity >= 1)
  transport->verbose = verbosity <= 3 ? verbosity : 3;
 if (verbosity < 0)
  transport->verbose = -1;
 if (force_progress >= 0)
  transport->progress = !!force_progress;
 else
  transport->progress = verbosity >= 0 && isatty(2);
}
