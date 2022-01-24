#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_addr; int /*<<< orphan*/  h_addr_list; } ;
struct cluster_server {char* hostname; int port; struct in_addr addr; scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 struct cluster_server* CS ; 
 scalar_t__ CSN ; 
 scalar_t__ MAX_CLUSTER_SERVERS ; 
 int MAX_CONFIG_SIZE ; 
 char* cfg_cur ; 
 scalar_t__* cfg_end ; 
 scalar_t__ cfg_lno ; 
 scalar_t__ FUNC0 () ; 
 char FUNC1 () ; 
 void* cfg_start ; 
 void* config_buff ; 
 int config_bytes ; 
 char* config_filename ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 struct hostent* FUNC4 (char*) ; 
 char* FUNC5 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC6 (struct cluster_server*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ verbosity ; 

void FUNC10 (void) {
  int r, c;
  char *ptr, *s;
  struct cluster_server *D;
  struct hostent *h;
  config_bytes = r = FUNC7 (fd[0], config_buff, MAX_CONFIG_SIZE+1);
  if (r < 0) {
    FUNC3 (stderr, "error reading configuration file %s: %m\n", config_filename);
    FUNC2 (2);
  }
  if (r > MAX_CONFIG_SIZE) {
    FUNC3 (stderr, "configuration file %s too long (max %d bytes)\n", config_filename, MAX_CONFIG_SIZE);
    FUNC2 (2);
  }
  cfg_cur = cfg_start = config_buff;
  cfg_end = cfg_start + r;
  *cfg_end = 0;
  cfg_lno = 0;

  CSN = 0;
  while (FUNC0()) {
    ptr = s = cfg_cur;
    while ((*s >= 'a' && *s <= 'z') || (*s >= 'A' && *s <= 'Z') || (*s >= '0' && *s <= '9') || *s == '.' || *s == '-' || *s == '_') {
      s++;
    }
    if (s == ptr) {
      FUNC9("hostname expected");
      return;
    }
    if (s > ptr + 63) {
      FUNC9("hostname too long");
      return;
    }
    c = *s;
    *s = 0;
    if (CSN >= MAX_CLUSTER_SERVERS) {
      FUNC9("too many servers in cluster");
      return;
    }
    D = CS + CSN;
    FUNC6 (D, 0, sizeof (*D));
    D->id = CSN;
    D->hostname = ptr;
    D->port = -1;
    if (!(h = FUNC4 (ptr)) || h->h_addrtype != AF_INET || h->h_length != 4 || !h->h_addr_list || !h->h_addr) {
      FUNC9("cannot resolve hostname");
      return;
    }
    D->addr = *((struct in_addr *) h->h_addr);

    cfg_cur = ptr = s;
    *s = c;
    if (FUNC1() != ':') {
      FUNC9("':' expected");
    }
    cfg_cur++;
    FUNC1();
    if (*cfg_cur < '0' || *cfg_cur > '9') {
      FUNC9("port number expected");
    }
    D->port = FUNC8 (cfg_cur, &cfg_cur, 10);
    if (D->port <= 0 || D->port >= 0x10000) {
      FUNC9("port number out of range");
    }
    if (FUNC1() != ';') {
      FUNC9("';' expected");
    }
    cfg_cur++;

    CSN++;
    if (verbosity > 0) {
      FUNC3 (stderr, "server #%ld: ip %s, port %d\n", CSN, FUNC5(D->addr), D->port);
    }
  }
  if (!CSN) {
    FUNC3 (stderr, "fatal: no cluster servers defined\n");
    FUNC2(1);
  }
}