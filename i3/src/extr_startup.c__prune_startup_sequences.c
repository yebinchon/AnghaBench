
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct Startup_Sequence {scalar_t__ delete_at; } ;


 struct Startup_Sequence* TAILQ_END (int *) ;
 struct Startup_Sequence* TAILQ_FIRST (int *) ;
 struct Startup_Sequence* TAILQ_NEXT (struct Startup_Sequence*,int ) ;
 int sequences ;
 int startup_sequence_delete (struct Startup_Sequence*) ;
 int startup_sequences ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int _prune_startup_sequences(void) {
    time_t current_time = time(((void*)0));
    int active_sequences = 0;



    struct Startup_Sequence *current, *next;
    for (next = TAILQ_FIRST(&startup_sequences);
         next != TAILQ_END(&startup_sequences);) {
        current = next;
        next = TAILQ_NEXT(next, sequences);

        if (current->delete_at == 0) {
            active_sequences++;
            continue;
        }

        if (current_time <= current->delete_at)
            continue;

        startup_sequence_delete(current);
    }

    return active_sequences;
}
