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
typedef  int /*<<< orphan*/  u64 ;
struct sfe_ipv6_debug_xml_write_state {int /*<<< orphan*/  state; } ;
struct sfe_ipv6 {unsigned int num_connections; int /*<<< orphan*/  lock; int /*<<< orphan*/  connection_match_hash_reorders64; int /*<<< orphan*/  connection_match_hash_hits64; int /*<<< orphan*/  connection_flushes64; int /*<<< orphan*/  connection_destroy_misses64; int /*<<< orphan*/  connection_destroy_requests64; int /*<<< orphan*/  connection_create_collisions64; int /*<<< orphan*/  connection_create_requests64; int /*<<< orphan*/  packets_not_forwarded64; int /*<<< orphan*/  packets_forwarded64; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_DEV_MSG_SIZE ; 
 scalar_t__ FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sfe_ipv6*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct sfe_ipv6 *si, char *buffer, char *msg, size_t *length,
					  int *total_read, struct sfe_ipv6_debug_xml_write_state *ws)
{
	int bytes_read;
	unsigned int num_connections;
	u64 packets_forwarded;
	u64 packets_not_forwarded;
	u64 connection_create_requests;
	u64 connection_create_collisions;
	u64 connection_destroy_requests;
	u64 connection_destroy_misses;
	u64 connection_flushes;
	u64 connection_match_hash_hits;
	u64 connection_match_hash_reorders;

	FUNC3(&si->lock);
	FUNC1(si);

	num_connections = si->num_connections;
	packets_forwarded = si->packets_forwarded64;
	packets_not_forwarded = si->packets_not_forwarded64;
	connection_create_requests = si->connection_create_requests64;
	connection_create_collisions = si->connection_create_collisions64;
	connection_destroy_requests = si->connection_destroy_requests64;
	connection_destroy_misses = si->connection_destroy_misses64;
	connection_flushes = si->connection_flushes64;
	connection_match_hash_hits = si->connection_match_hash_hits64;
	connection_match_hash_reorders = si->connection_match_hash_reorders64;
	FUNC4(&si->lock);

	bytes_read = FUNC2(msg, CHAR_DEV_MSG_SIZE, "\t<stats "
			      "num_connections=\"%u\" "
			      "pkts_forwarded=\"%llu\" pkts_not_forwarded=\"%llu\" "
			      "create_requests=\"%llu\" create_collisions=\"%llu\" "
			      "destroy_requests=\"%llu\" destroy_misses=\"%llu\" "
			      "flushes=\"%llu\" "
			      "hash_hits=\"%llu\" hash_reorders=\"%llu\" />\n",
			      num_connections,
			      packets_forwarded,
			      packets_not_forwarded,
			      connection_create_requests,
			      connection_create_collisions,
			      connection_destroy_requests,
			      connection_destroy_misses,
			      connection_flushes,
			      connection_match_hash_hits,
			      connection_match_hash_reorders);
	if (FUNC0(buffer + *total_read, msg, CHAR_DEV_MSG_SIZE)) {
		return false;
	}

	*length -= bytes_read;
	*total_read += bytes_read;

	ws->state++;
	return true;
}