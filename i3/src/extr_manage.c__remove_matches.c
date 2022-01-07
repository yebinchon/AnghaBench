
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int swallow_head; } ;
typedef int Match ;
typedef TYPE_1__ Con ;


 int TAILQ_EMPTY (int *) ;
 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int free (int *) ;
 int match_free (int *) ;
 int matches ;

__attribute__((used)) static void _remove_matches(Con *con) {
    while (!TAILQ_EMPTY(&(con->swallow_head))) {
        Match *first = TAILQ_FIRST(&(con->swallow_head));
        TAILQ_REMOVE(&(con->swallow_head), first, matches);
        match_free(first);
        free(first);
    }
}
