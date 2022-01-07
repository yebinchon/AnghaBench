
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char const* name; } ;
typedef TYPE_1__ mark_t ;
typedef scalar_t__ mark_mode_t ;
struct TYPE_10__ {int mark_changed; int marks_head; } ;
typedef TYPE_2__ Con ;


 int DLOG (char*,...) ;
 scalar_t__ MM_REPLACE ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int assert (int ) ;
 int con_unmark (TYPE_2__*,char const*) ;
 int ipc_send_window_event (char*,TYPE_2__*) ;
 int marks ;
 TYPE_1__* scalloc (int,int) ;
 char const* sstrdup (char const*) ;

void con_mark(Con *con, const char *mark, mark_mode_t mode) {
    assert(con != ((void*)0));
    DLOG("Setting mark \"%s\" on con = %p.\n", mark, con);

    con_unmark(((void*)0), mark);
    if (mode == MM_REPLACE) {
        DLOG("Removing all existing marks on con = %p.\n", con);

        mark_t *current;
        while (!TAILQ_EMPTY(&(con->marks_head))) {
            current = TAILQ_FIRST(&(con->marks_head));
            con_unmark(con, current->name);
        }
    }

    mark_t *new = scalloc(1, sizeof(mark_t));
    new->name = sstrdup(mark);
    TAILQ_INSERT_TAIL(&(con->marks_head), new, marks);
    ipc_send_window_event("mark", con);

    con->mark_changed = 1;
}
