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
typedef  TYPE_1__ brain_server_hash_unique_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1 (const void *v1, const void *v2)
{
  const brain_server_hash_unique_t *d1 = (const brain_server_hash_unique_t *) v1;
  const brain_server_hash_unique_t *d2 = (const brain_server_hash_unique_t *) v2;

  return FUNC0 (d1->hash, d2->hash);
}