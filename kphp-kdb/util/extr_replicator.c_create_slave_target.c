
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct related_binlog {int flags; int targets; int * target; TYPE_1__* master; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {char* h_addr; int h_addrtype; int h_length; int h_addr_list; } ;
struct TYPE_5__ {char* target_ipv6; int port; int min_connections; int max_connections; struct in_addr target; } ;
struct TYPE_4__ {char* location; } ;




 int LRF_BROKEN ;
 int assert (int) ;
 int create_target (TYPE_2__*,int ) ;
 TYPE_2__ default_ct ;
 scalar_t__ double_send_recv ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 char* inet_ntoa (struct in_addr) ;
 struct hostent* kdb_gethostbyname (char*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 char* show_ipv6 (char*) ;
 int stderr ;
 char* strrchr (char*,char) ;
 scalar_t__ verbosity ;

int create_slave_target (struct related_binlog *R) {
  char *s = R->master->location, *t = strrchr (s, ':');
  struct hostent *h;
  assert (t && t >= s && t <= s + 63);
  char remote_hostname[64];
  memcpy (remote_hostname, s, t - s);
  remote_hostname[t - s] = 0;
  if (!(h = kdb_gethostbyname (remote_hostname)) || !h->h_addr_list || !h->h_addr) {
    fprintf (stderr, "cannot resolve %s\n", remote_hostname);
    exit (2);
  }
  switch (h->h_addrtype) {
  case 129:
    assert (h->h_length == 4);
    default_ct.target = *((struct in_addr *) h->h_addr);
    memset (default_ct.target_ipv6, 0, 16);
    break;
  case 128:
    assert (h->h_length == 16);
    default_ct.target.s_addr = 0;
    memcpy (default_ct.target_ipv6, h->h_addr, 16);
    break;
  default:
    fprintf (stderr, "cannot resolve %s: bad address type %d\n", remote_hostname, h->h_addrtype);
    exit (2);
  }

  if (verbosity > 0) {
    fprintf (stderr, "creating target %s:%d (ip %s)\n", remote_hostname, default_ct.port, default_ct.target.s_addr ? inet_ntoa (default_ct.target) : show_ipv6 (default_ct.target_ipv6));
  }

  assert (!(R->flags & LRF_BROKEN));
  R->targets = double_send_recv ? 2 : 1;
  int i;
  default_ct.min_connections = default_ct.max_connections = R->targets;
  for (i = 0; i < R->targets; i++) {
    R->target[i] = create_target (&default_ct, 0);
    if (!R->target[i]) {
      R->targets = 0;
      return -1;
    }
  }
  return 0;
}
