
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sighand {struct sigaction_* action; } ;
struct sigaction_ {scalar_t__ handler; } ;





 int SIGNAL_CALL_HANDLER ;
 int SIGNAL_IGNORE ;
 int SIGNAL_KILL ;
 int SIGNAL_STOP ;






 scalar_t__ SIG_DFL_ ;
 scalar_t__ SIG_IGN_ ;
 scalar_t__ signal_is_blockable (int) ;

__attribute__((used)) static int signal_action(struct sighand *sighand, int sig) {
    if (signal_is_blockable(sig)) {
        struct sigaction_ *action = &sighand->action[sig];
        if (action->handler == SIG_IGN_)
            return SIGNAL_IGNORE;
        if (action->handler != SIG_DFL_)
            return SIGNAL_CALL_HANDLER;
    }

    switch (sig) {
        case 129: case 135: case 136:
        case 134: case 128:
            return SIGNAL_IGNORE;

        case 133: case 132: case 131: case 130:
            return SIGNAL_STOP;

        default:
            return SIGNAL_KILL;
    }
}
