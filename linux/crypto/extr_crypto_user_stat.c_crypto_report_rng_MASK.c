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
struct crypto_stat_rng {void* stat_err_cnt; void* stat_seed_cnt; void* stat_generate_tlen; void* stat_generate_cnt; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  err_cnt; int /*<<< orphan*/  seed_cnt; int /*<<< orphan*/  generate_tlen; int /*<<< orphan*/  generate_cnt; } ;
struct TYPE_4__ {TYPE_1__ rng; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef  int /*<<< orphan*/  rrng ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_STAT_RNG ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_stat_rng*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_stat_rng*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_stat_rng rrng;

	FUNC1(&rrng, 0, sizeof(rrng));

	FUNC3(rrng.type, "rng", sizeof(rrng.type));

	rrng.stat_generate_cnt = FUNC0(&alg->stats.rng.generate_cnt);
	rrng.stat_generate_tlen = FUNC0(&alg->stats.rng.generate_tlen);
	rrng.stat_seed_cnt = FUNC0(&alg->stats.rng.seed_cnt);
	rrng.stat_err_cnt = FUNC0(&alg->stats.rng.err_cnt);

	return FUNC2(skb, CRYPTOCFGA_STAT_RNG, sizeof(rrng), &rrng);
}