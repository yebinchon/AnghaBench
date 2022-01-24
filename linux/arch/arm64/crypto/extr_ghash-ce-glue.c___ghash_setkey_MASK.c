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
typedef  int /*<<< orphan*/  u8 ;
struct ghash_key {int /*<<< orphan*/  h4; int /*<<< orphan*/  k; int /*<<< orphan*/  h3; int /*<<< orphan*/  h2; int /*<<< orphan*/  h; } ;
typedef  int /*<<< orphan*/  be128 ;

/* Variables and functions */
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ghash_key *key,
			  const u8 *inkey, unsigned int keylen)
{
	be128 h;

	/* needed for the fallback */
	FUNC2(&key->k, inkey, GHASH_BLOCK_SIZE);

	FUNC1(key->h, &key->k);

	h = key->k;
	FUNC0(&h, &key->k);
	FUNC1(key->h2, &h);

	FUNC0(&h, &key->k);
	FUNC1(key->h3, &h);

	FUNC0(&h, &key->k);
	FUNC1(key->h4, &h);

	return 0;
}