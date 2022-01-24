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
struct crypto_stat_aead {void* stat_err_cnt; void* stat_decrypt_tlen; void* stat_decrypt_cnt; void* stat_encrypt_tlen; void* stat_encrypt_cnt; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  err_cnt; int /*<<< orphan*/  decrypt_tlen; int /*<<< orphan*/  decrypt_cnt; int /*<<< orphan*/  encrypt_tlen; int /*<<< orphan*/  encrypt_cnt; } ;
struct TYPE_4__ {TYPE_1__ aead; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef  int /*<<< orphan*/  raead ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_STAT_AEAD ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_stat_aead*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_stat_aead*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_stat_aead raead;

	FUNC1(&raead, 0, sizeof(raead));

	FUNC3(raead.type, "aead", sizeof(raead.type));

	raead.stat_encrypt_cnt = FUNC0(&alg->stats.aead.encrypt_cnt);
	raead.stat_encrypt_tlen = FUNC0(&alg->stats.aead.encrypt_tlen);
	raead.stat_decrypt_cnt = FUNC0(&alg->stats.aead.decrypt_cnt);
	raead.stat_decrypt_tlen = FUNC0(&alg->stats.aead.decrypt_tlen);
	raead.stat_err_cnt = FUNC0(&alg->stats.aead.err_cnt);

	return FUNC2(skb, CRYPTOCFGA_STAT_AEAD, sizeof(raead), &raead);
}