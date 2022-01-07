
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ylength ;
struct TYPE_2__ {int num_events; int * events; } ;
typedef TYPE_1__ ipc_client ;


 int DLOG (char*,...) ;
 int memcpy (int ,unsigned char const*,scalar_t__) ;
 int scalloc (scalar_t__,int) ;
 int * srealloc (int *,int) ;

__attribute__((used)) static int add_subscription(void *extra, const unsigned char *s,
                            ylength len) {
    ipc_client *client = extra;

    DLOG("should add subscription to extra %p, sub %.*s\n", client, (int)len, s);
    int event = client->num_events;

    client->num_events++;
    client->events = srealloc(client->events, client->num_events * sizeof(char *));


    client->events[event] = scalloc(len + 1, 1);
    memcpy(client->events[event], s, len);

    DLOG("client is now subscribed to:\n");
    for (int i = 0; i < client->num_events; i++) {
        DLOG("event %s\n", client->events[i]);
    }
    DLOG("(done)\n");

    return 1;
}
