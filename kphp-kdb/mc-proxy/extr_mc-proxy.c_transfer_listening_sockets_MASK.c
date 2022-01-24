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
struct memcache_server_functions {struct mc_cluster* info; } ;
struct mc_config {int clusters_num; struct mc_cluster* Clusters; } ;
struct mc_cluster {int other_cluster_no; scalar_t__ port; int server_socket; int cluster_no; int cluster_name; struct connection* listening_connection; int /*<<< orphan*/  mc_proxy_inbound; } ;
struct connection {scalar_t__ basic_type; int fd; int /*<<< orphan*/ * extra; } ;

/* Variables and functions */
 struct connection* Connections ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ct_inbound ; 
 int /*<<< orphan*/  ct_memcache_server ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int max_connection ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,scalar_t__,int,...) ; 

int FUNC6 (struct mc_config *MC, struct mc_config *MC_Old) {
  int i, j, k;
  for (i = 0; i < MC->clusters_num; i++) {
    struct mc_cluster *C = &MC->Clusters[i];
    j = C->other_cluster_no;
    if (j >= 0) {
      FUNC0 (j < MC_Old->clusters_num);
      struct mc_cluster *OC = &MC_Old->Clusters[j];
      FUNC0 (OC->port == C->port && OC->other_cluster_no == i);
      C->server_socket = OC->server_socket;
      C->listening_connection = OC->listening_connection;
      OC->server_socket = -1;
      OC->listening_connection = 0;
      C->listening_connection->extra = &C->mc_proxy_inbound;
    } else {
      FUNC0 (FUNC4 (C->server_socket, &ct_memcache_server, &C->mc_proxy_inbound) >= 0);
      C->listening_connection = Connections + C->server_socket;
    }
  }
  for (k = 0; k <= max_connection; k++) { 
    struct connection *c = Connections + k;
    if (c->basic_type != ct_inbound || c->fd != k) {
      continue;
    }
    struct mc_cluster *OC = ((struct memcache_server_functions *) c->extra)->info;
    FUNC0 (OC && &OC->mc_proxy_inbound == c->extra);
    j = OC->cluster_no;
    i = OC->other_cluster_no;
    FUNC0 (OC == &MC_Old->Clusters[j]);
    if (i >= 0) {
      struct mc_cluster *C = &MC->Clusters[i];
      FUNC0 (C->cluster_no == i && C->other_cluster_no == j);
      FUNC5 (2, "transferring inbound connection #%d (port %d) from old cluster %d to new cluster %d\n", k, OC->port, j, i);
      c->extra = &C->mc_proxy_inbound;
    } else {
      FUNC5 (2, "closing inbound connection #%d (port %d) belonging to old cluster %d, no new cluster\n", k, OC->port, j);
      FUNC3 (c);
      FUNC2 (k);
      FUNC1 (k);
    }
  }
  for (i = 0; i < MC_Old->clusters_num; i++) {
    struct mc_cluster *OC = &MC_Old->Clusters[i];
    if (OC->other_cluster_no == -1) {
      FUNC0 (OC->server_socket >= 0);
      k = OC->server_socket;
      FUNC5 (1, "closing unneeded listening connection #%d for port %d belonging to old cluster %d (%s)\n", k, OC->port, i, OC->cluster_name);
      FUNC3 (&Connections[k]);
      FUNC2 (k);
      FUNC1 (k);
      OC->server_socket = -1;
      OC->listening_connection = 0;
    } else {
      FUNC0 (OC->server_socket == -1 && !OC->listening_connection);
    }
  }
  return 0;
}