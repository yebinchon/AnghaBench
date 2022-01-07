
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* name; int marks_head; int swallow_head; struct TYPE_11__* deco_render_params; } ;
typedef TYPE_1__ mark_t ;
typedef TYPE_1__ Match ;
typedef TYPE_1__ Con ;


 int DLOG (char*,TYPE_1__*) ;
 int FREE (TYPE_1__*) ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int all_cons ;
 int free (TYPE_1__*) ;
 int marks ;
 int match_free (TYPE_1__*) ;
 int matches ;

void con_free(Con *con) {
    free(con->name);
    FREE(con->deco_render_params);
    TAILQ_REMOVE(&all_cons, con, all_cons);
    while (!TAILQ_EMPTY(&(con->swallow_head))) {
        Match *match = TAILQ_FIRST(&(con->swallow_head));
        TAILQ_REMOVE(&(con->swallow_head), match, matches);
        match_free(match);
        free(match);
    }
    while (!TAILQ_EMPTY(&(con->marks_head))) {
        mark_t *mark = TAILQ_FIRST(&(con->marks_head));
        TAILQ_REMOVE(&(con->marks_head), mark, marks);
        FREE(mark->name);
        FREE(mark);
    }
    free(con);
    DLOG("con %p freed\n", con);
}
