
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev_signal {int dummy; } ;
typedef int signal_watchers ;


 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int ev_signal_init (struct ev_signal*,int ,int ) ;
 int ev_signal_start (int ,struct ev_signal*) ;
 int ev_unref (int ) ;
 int handle_term_signal ;
 int main_loop ;

__attribute__((used)) static void setup_term_handlers(void) {
    static struct ev_signal signal_watchers[6];
    size_t num_watchers = sizeof(signal_watchers) / sizeof(signal_watchers[0]);







    ev_signal_init(&signal_watchers[0], handle_term_signal, SIGHUP);
    ev_signal_init(&signal_watchers[1], handle_term_signal, SIGINT);
    ev_signal_init(&signal_watchers[2], handle_term_signal, SIGALRM);
    ev_signal_init(&signal_watchers[3], handle_term_signal, SIGTERM);
    ev_signal_init(&signal_watchers[4], handle_term_signal, SIGUSR1);
    ev_signal_init(&signal_watchers[5], handle_term_signal, SIGUSR1);
    for (size_t i = 0; i < num_watchers; i++) {
        ev_signal_start(main_loop, &signal_watchers[i]);



        ev_unref(main_loop);
    }
}
