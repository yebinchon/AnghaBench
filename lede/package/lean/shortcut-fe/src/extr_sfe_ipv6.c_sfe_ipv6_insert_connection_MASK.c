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
struct sfe_ipv6_connection {int /*<<< orphan*/  reply_match; int /*<<< orphan*/  original_match; struct sfe_ipv6_connection* all_connections_next; struct sfe_ipv6_connection* all_connections_prev; struct sfe_ipv6_connection* next; struct sfe_ipv6_connection* prev; int /*<<< orphan*/  dest_port; int /*<<< orphan*/  dest_ip; int /*<<< orphan*/  src_port; int /*<<< orphan*/  src_ip; int /*<<< orphan*/  protocol; } ;
struct sfe_ipv6 {int /*<<< orphan*/  num_connections; struct sfe_ipv6_connection* all_connections_tail; struct sfe_ipv6_connection* all_connections_head; struct sfe_ipv6_connection** conn_hash; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfe_ipv6*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sfe_ipv6 *si, struct sfe_ipv6_connection *c)
{
	struct sfe_ipv6_connection **hash_head;
	struct sfe_ipv6_connection *prev_head;
	unsigned int conn_idx;

	/*
	 * Insert entry into the connection hash.
	 */
	conn_idx = FUNC0(c->protocol, c->src_ip, c->src_port,
						c->dest_ip, c->dest_port);
	hash_head = &si->conn_hash[conn_idx];
	prev_head = *hash_head;
	c->prev = NULL;
	if (prev_head) {
		prev_head->prev = c;
	}

	c->next = prev_head;
	*hash_head = c;

	/*
	 * Insert entry into the "all connections" list.
	 */
	if (si->all_connections_tail) {
		c->all_connections_prev = si->all_connections_tail;
		si->all_connections_tail->all_connections_next = c;
	} else {
		c->all_connections_prev = NULL;
		si->all_connections_head = c;
	}

	si->all_connections_tail = c;
	c->all_connections_next = NULL;
	si->num_connections++;

	/*
	 * Insert the connection match objects too.
	 */
	FUNC1(si, c->original_match);
	FUNC1(si, c->reply_match);
}