
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int surface; int colormap; } ;
typedef TYPE_1__ dialog_t ;


 int TAILQ_EMPTY (int *) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int conn ;
 int dialogs ;
 int draw_util_surface_free (int ,int *) ;
 int free (TYPE_1__*) ;
 int xcb_destroy_window (int ,int ) ;
 int xcb_flush (int ) ;
 int xcb_free_colormap (int ,int ) ;

__attribute__((used)) static void sighandler_destroy_dialogs(void) {
    while (!TAILQ_EMPTY(&dialogs)) {
        dialog_t *dialog = TAILQ_FIRST(&dialogs);

        xcb_free_colormap(conn, dialog->colormap);
        draw_util_surface_free(conn, &(dialog->surface));
        xcb_destroy_window(conn, dialog->id);

        TAILQ_REMOVE(&dialogs, dialog, dialogs);
        free(dialog);
    }

    xcb_flush(conn);
}
