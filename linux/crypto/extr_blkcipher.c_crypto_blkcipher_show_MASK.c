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
struct seq_file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ivsize; int /*<<< orphan*/  max_keysize; int /*<<< orphan*/  min_keysize; } ;
struct crypto_alg {TYPE_1__ cra_blkcipher; int /*<<< orphan*/  cra_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, struct crypto_alg *alg)
{
	FUNC0(m, "type         : blkcipher\n");
	FUNC0(m, "blocksize    : %u\n", alg->cra_blocksize);
	FUNC0(m, "min keysize  : %u\n", alg->cra_blkcipher.min_keysize);
	FUNC0(m, "max keysize  : %u\n", alg->cra_blkcipher.max_keysize);
	FUNC0(m, "ivsize       : %u\n", alg->cra_blkcipher.ivsize);
	FUNC0(m, "geniv        : <default>\n");
}