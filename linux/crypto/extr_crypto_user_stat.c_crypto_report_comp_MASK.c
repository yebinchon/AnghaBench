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
struct crypto_stat_compress {void* stat_err_cnt; void* stat_decompress_tlen; void* stat_decompress_cnt; void* stat_compress_tlen; void* stat_compress_cnt; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  err_cnt; int /*<<< orphan*/  decompress_tlen; int /*<<< orphan*/  decompress_cnt; int /*<<< orphan*/  compress_tlen; int /*<<< orphan*/  compress_cnt; } ;
struct TYPE_4__ {TYPE_1__ compress; } ;
struct crypto_alg {TYPE_2__ stats; } ;
typedef  int /*<<< orphan*/  rcomp ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_STAT_COMPRESS ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_stat_compress*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_stat_compress*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_stat_compress rcomp;

	FUNC1(&rcomp, 0, sizeof(rcomp));

	FUNC3(rcomp.type, "compression", sizeof(rcomp.type));
	rcomp.stat_compress_cnt = FUNC0(&alg->stats.compress.compress_cnt);
	rcomp.stat_compress_tlen = FUNC0(&alg->stats.compress.compress_tlen);
	rcomp.stat_decompress_cnt = FUNC0(&alg->stats.compress.decompress_cnt);
	rcomp.stat_decompress_tlen = FUNC0(&alg->stats.compress.decompress_tlen);
	rcomp.stat_err_cnt = FUNC0(&alg->stats.compress.err_cnt);

	return FUNC2(skb, CRYPTOCFGA_STAT_COMPRESS, sizeof(rcomp), &rcomp);
}