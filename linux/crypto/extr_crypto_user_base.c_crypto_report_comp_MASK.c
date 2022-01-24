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
struct sk_buff {int dummy; } ;
struct crypto_report_comp {int /*<<< orphan*/  type; } ;
struct crypto_alg {int dummy; } ;
typedef  int /*<<< orphan*/  rcomp ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCFGA_REPORT_COMPRESS ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_report_comp*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct crypto_report_comp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct crypto_alg *alg)
{
	struct crypto_report_comp rcomp;

	FUNC0(&rcomp, 0, sizeof(rcomp));

	FUNC2(rcomp.type, "compression", sizeof(rcomp.type));

	return FUNC1(skb, CRYPTOCFGA_REPORT_COMPRESS, sizeof(rcomp), &rcomp);
}