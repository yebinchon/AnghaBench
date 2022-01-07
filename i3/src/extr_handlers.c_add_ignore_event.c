
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Ignore_Event {int sequence; int response_type; int added; } ;


 int SLIST_INSERT_HEAD (int *,struct Ignore_Event*,int ) ;
 int ignore_events ;
 struct Ignore_Event* smalloc (int) ;
 int time (int *) ;

void add_ignore_event(const int sequence, const int response_type) {
    struct Ignore_Event *event = smalloc(sizeof(struct Ignore_Event));

    event->sequence = sequence;
    event->response_type = response_type;
    event->added = time(((void*)0));

    SLIST_INSERT_HEAD(&ignore_events, event, ignore_events);
}
