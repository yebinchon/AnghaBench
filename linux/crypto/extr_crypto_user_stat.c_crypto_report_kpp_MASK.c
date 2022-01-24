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
struct crypto_stat_kpp {void* stat_err_cnt; void* stat_compute_shared_secret_cnt; void* stat_generate_public_key_cnt; void* stat_setsecret_cnt; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  err_cnt; int /*<<< orphan*/  compute_shared_secret_cnt; int /*<<< orphan*/  generate_public_key_cnt; int /*<<< orphan*/  setsecret_cnt; } ;
struct TYPE_4__ {TYPE_1__ kpp; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef  int /*<<< orphan*/  rkpp ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_STAT_KPP ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_stat_kpp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_stat_kpp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_stat_kpp rkpp;

	FUNC1(&rkpp, 0, sizeof(rkpp));

	FUNC3(rkpp.type, "kpp", sizeof(rkpp.type));

	rkpp.stat_setsecret_cnt = FUNC0(&alg->stats.kpp.setsecret_cnt);
	rkpp.stat_generate_public_key_cnt = FUNC0(&alg->stats.kpp.generate_public_key_cnt);
	rkpp.stat_compute_shared_secret_cnt = FUNC0(&alg->stats.kpp.compute_shared_secret_cnt);
	rkpp.stat_err_cnt = FUNC0(&alg->stats.kpp.err_cnt);

	return FUNC2(skb, CRYPTOCFGA_STAT_KPP, sizeof(rkpp), &rkpp);
}