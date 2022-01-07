
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Startup_Sequence {int workspace; int id; int context; scalar_t__ delete_at; } ;


 int DLOG (char*,int ,long long,long long) ;
 int FREE (struct Startup_Sequence*) ;
 int TAILQ_REMOVE (int *,struct Startup_Sequence*,int ) ;
 int assert (int ) ;
 int free (int ) ;
 int sequences ;
 int sn_launcher_context_unref (int ) ;
 int startup_sequences ;
 scalar_t__ time (int *) ;

void startup_sequence_delete(struct Startup_Sequence *sequence) {
    assert(sequence != ((void*)0));
    DLOG("Deleting startup sequence %s, delete_at = %lld, current_time = %lld\n",
         sequence->id, (long long)sequence->delete_at, (long long)time(((void*)0)));


    sn_launcher_context_unref(sequence->context);


    TAILQ_REMOVE(&startup_sequences, sequence, sequences);

    free(sequence->id);
    free(sequence->workspace);
    FREE(sequence);
}
