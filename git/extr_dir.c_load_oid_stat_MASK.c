#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  hash; } ;
struct oid_stat {int valid; TYPE_1__ oid; int /*<<< orphan*/  stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*) ; 

__attribute__((used)) static void FUNC2(struct oid_stat *oid_stat, const unsigned char *data,
			  const unsigned char *sha1)
{
	FUNC1(&oid_stat->stat, data);
	FUNC0(oid_stat->oid.hash, sha1);
	oid_stat->valid = 1;
}