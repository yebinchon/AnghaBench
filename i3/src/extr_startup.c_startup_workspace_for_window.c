
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_get_property_reply_t ;
typedef scalar_t__ time_t ;
struct Startup_Sequence {scalar_t__ delete_at; char* workspace; int id; } ;
typedef int i3Window ;


 int DLOG (char*,int ) ;
 int startup_sequence_delete (struct Startup_Sequence*) ;
 struct Startup_Sequence* startup_sequence_get (int *,int *,int) ;
 scalar_t__ time (int *) ;

char *startup_workspace_for_window(i3Window *cwindow, xcb_get_property_reply_t *startup_id_reply) {
    struct Startup_Sequence *sequence = startup_sequence_get(cwindow, startup_id_reply, 0);
    if (sequence == ((void*)0))
        return ((void*)0);


    time_t current_time = time(((void*)0));
    if (sequence->delete_at > 0 && current_time > sequence->delete_at) {
        DLOG("Deleting expired startup sequence %s\n", sequence->id);
        startup_sequence_delete(sequence);
        return ((void*)0);
    }

    return sequence->workspace;
}
