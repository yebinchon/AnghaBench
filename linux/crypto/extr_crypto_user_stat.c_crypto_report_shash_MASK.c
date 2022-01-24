#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct crypto_stat_hash {void* stat_err_cnt; void* stat_hash_tlen; void* stat_hash_cnt; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  err_cnt; int /*<<< orphan*/  hash_tlen; int /*<<< orphan*/  hash_cnt; } ;
struct TYPE_3__ {TYPE_2__ hash; } ;
struct crypto_alg {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  rhash ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_STAT_HASH ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_stat_hash*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_stat_hash*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_stat_hash rhash;

	FUNC1(&rhash, 0, sizeof(rhash));

	FUNC3(rhash.type, "shash", sizeof(rhash.type));

	rhash.stat_hash_cnt =  FUNC0(&alg->stats.hash.hash_cnt);
	rhash.stat_hash_tlen = FUNC0(&alg->stats.hash.hash_tlen);
	rhash.stat_err_cnt = FUNC0(&alg->stats.hash.err_cnt);

	return FUNC2(skb, CRYPTOCFGA_STAT_HASH, sizeof(rhash), &rhash);
}