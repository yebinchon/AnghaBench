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
struct object_id {scalar_t__ hash; } ;
struct TYPE_2__ {scalar_t__ hexsz; int rawsz; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,char const*,int) ; 
 scalar_t__ FUNC1 (char const*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static int FUNC2(const char *path, struct object_id *oid)
{
	if (FUNC1(path) != the_hash_algo->hexsz + 1)
		return -1;

	if (FUNC0(oid->hash, path, 1))
		return -1;
	path += 2;
	path++; /* skip '/' */

	return FUNC0(oid->hash + 1, path, the_hash_algo->rawsz - 1);
}