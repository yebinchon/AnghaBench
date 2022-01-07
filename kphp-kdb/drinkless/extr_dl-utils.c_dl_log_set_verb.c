
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int verbosity_stderr; int verbosity_log; } ;


 TYPE_1__* dl_log ;

void dl_log_set_verb (int log_id, int verbosity_stderr, int verbosity_log) {
  dl_log[log_id].verbosity_stderr = verbosity_stderr;
  dl_log[log_id].verbosity_log = verbosity_log;
}
