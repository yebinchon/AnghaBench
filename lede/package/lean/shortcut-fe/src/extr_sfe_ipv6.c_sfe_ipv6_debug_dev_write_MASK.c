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
struct sfe_ipv6 {int /*<<< orphan*/  lock; scalar_t__ connection_match_hash_reorders64; scalar_t__ connection_match_hash_hits64; scalar_t__ connection_flushes64; scalar_t__ connection_destroy_misses64; scalar_t__ connection_destroy_requests64; scalar_t__ connection_create_collisions64; scalar_t__ connection_create_requests64; scalar_t__ packets_not_forwarded64; scalar_t__ packets_forwarded64; } ;
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct sfe_ipv6 __si6 ; 
 int /*<<< orphan*/  FUNC0 (struct sfe_ipv6*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *filp, const char *buffer, size_t length, loff_t *offset)
{
	struct sfe_ipv6 *si = &__si6;

	FUNC1(&si->lock);
	FUNC0(si);

	si->packets_forwarded64 = 0;
	si->packets_not_forwarded64 = 0;
	si->connection_create_requests64 = 0;
	si->connection_create_collisions64 = 0;
	si->connection_destroy_requests64 = 0;
	si->connection_destroy_misses64 = 0;
	si->connection_flushes64 = 0;
	si->connection_match_hash_hits64 = 0;
	si->connection_match_hash_reorders64 = 0;
	FUNC2(&si->lock);

	return length;
}