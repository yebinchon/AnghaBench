
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_6__ {int ss_family; } ;
struct TYPE_4__ {int len; TYPE_3__ ss; } ;
struct connection_t {scalar_t__ packet_num_down; scalar_t__ packet_num_up; struct connection_t* next; struct connection_t* prev; TYPE_1__ down_addr; int up_fd; int cid; } ;
typedef int socklen_t ;
struct TYPE_5__ {int ai_addrlen; int ai_addr; int ai_family; } ;




 int assert (int) ;
 scalar_t__ connect (int ,int ,int ) ;
 struct connection_t connections ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 struct connection_t* malloc (int) ;
 int memcmp (int *,int *,int) ;
 int memcpy (TYPE_3__*,struct sockaddr*,int ) ;
 int new_socket (int ) ;
 TYPE_2__* server_addr ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static struct connection_t *find_or_create_connection(struct sockaddr *sa, socklen_t salen)
{
    struct connection_t *c;
    static size_t cid;

    for (c = connections.next; c != &connections; c = c->next) {
        if (c->down_addr.ss.ss_family != sa->sa_family)
            continue;
        switch (c->down_addr.ss.ss_family) {
        case 129: {
            struct sockaddr_in *x = (void *)&c->down_addr, *y = (void *)sa;
            if (!(memcmp(&x->sin_addr, &y->sin_addr, sizeof(x->sin_addr)) == 0 && x->sin_port == y->sin_port))
                continue;
        } break;
        case 128: {
            struct sockaddr_in6 *x = (void *)&c->down_addr, *y = (void *)sa;
            if (!(memcmp(&x->sin6_addr, &y->sin6_addr, sizeof(x->sin6_addr)) == 0 && x->sin6_port == y->sin6_port))
                continue;
        } break;
        default:
            assert(!"FIXME");
            break;
        }
        return c;
    }


    c = malloc(sizeof(*c));
    assert(c != ((void*)0));
    c->cid = cid++;
    c->up_fd = new_socket(server_addr->ai_family);
    if (connect(c->up_fd, server_addr->ai_addr, server_addr->ai_addrlen) != 0) {
        fprintf(stderr, "failed to connect to server:%s\n", strerror(errno));
        exit(1);
    }
    memcpy(&c->down_addr.ss, sa, salen);
    c->down_addr.len = salen;
    c->prev = connections.prev;
    c->next = &connections;
    connections.prev = c;
    c->prev->next = c;
    c->packet_num_up = 0;
    c->packet_num_down = 0;
    return c;
}
