
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int h_addr_list; } ;
struct cluster_server {char* hostname; int port; struct in_addr addr; scalar_t__ id; } ;


 scalar_t__ AF_INET ;
 struct cluster_server* CS ;
 scalar_t__ CSN ;
 scalar_t__ MAX_CLUSTER_SERVERS ;
 int MAX_CONFIG_SIZE ;
 char* cfg_cur ;
 scalar_t__* cfg_end ;
 scalar_t__ cfg_lno ;
 scalar_t__ cfg_skipspc () ;
 char cfg_skspc () ;
 void* cfg_start ;
 void* config_buff ;
 int config_bytes ;
 char* config_filename ;
 int exit (int) ;
 int * fd ;
 int fprintf (int ,char*,...) ;
 struct hostent* gethostbyname (char*) ;
 char* inet_ntoa (struct in_addr) ;
 int memset (struct cluster_server*,int ,int) ;
 int read (int ,void*,int) ;
 int stderr ;
 int strtol (char*,char**,int) ;
 int syntax (char*) ;
 scalar_t__ verbosity ;

void parse_config (void) {
  int r, c;
  char *ptr, *s;
  struct cluster_server *D;
  struct hostent *h;
  config_bytes = r = read (fd[0], config_buff, MAX_CONFIG_SIZE+1);
  if (r < 0) {
    fprintf (stderr, "error reading configuration file %s: %m\n", config_filename);
    exit (2);
  }
  if (r > MAX_CONFIG_SIZE) {
    fprintf (stderr, "configuration file %s too long (max %d bytes)\n", config_filename, MAX_CONFIG_SIZE);
    exit (2);
  }
  cfg_cur = cfg_start = config_buff;
  cfg_end = cfg_start + r;
  *cfg_end = 0;
  cfg_lno = 0;

  CSN = 0;
  while (cfg_skipspc()) {
    ptr = s = cfg_cur;
    while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || (*s >= '0' && *s <= '9') || *s == '.' || *s == '-' || *s == '_') {
      s++;
    }
    if (s == ptr) {
      syntax("hostname expected");
      return;
    }
    if (s > ptr + 63) {
      syntax("hostname too long");
      return;
    }
    c = *s;
    *s = 0;
    if (CSN >= MAX_CLUSTER_SERVERS) {
      syntax("too many servers in cluster");
      return;
    }
    D = CS + CSN;
    memset (D, 0, sizeof (*D));
    D->id = CSN;
    D->hostname = ptr;
    D->port = -1;
    if (!(h = gethostbyname (ptr)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
      syntax("cannot resolve hostname");
      return;
    }
    D->addr = *((struct in_addr *) h->h_addr);

    cfg_cur = ptr = s;
    *s = c;
    if (cfg_skspc() != ':') {
      syntax("':' expected");
    }
    cfg_cur++;
    cfg_skspc();
    if (*cfg_cur < '0' || *cfg_cur > '9') {
      syntax("port number expected");
    }
    D->port = strtol (cfg_cur, &cfg_cur, 10);
    if (D->port <= 0 || D->port >= 0x10000) {
      syntax("port number out of range");
    }
    if (cfg_skspc() != ';') {
      syntax("';' expected");
    }
    cfg_cur++;

    CSN++;
    if (verbosity > 0) {
      fprintf (stderr, "server #%d: ip %s, port %d\n", CSN, inet_ntoa(D->addr), D->port);
    }
  }
  if (!CSN) {
    fprintf (stderr, "fatal: no cluster servers defined\n");
    exit(1);
  }
}
