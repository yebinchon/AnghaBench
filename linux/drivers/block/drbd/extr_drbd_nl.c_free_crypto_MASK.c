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
struct crypto {int /*<<< orphan*/  verify_tfm; int /*<<< orphan*/  csums_tfm; int /*<<< orphan*/  integrity_tfm; int /*<<< orphan*/  cram_hmac_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct crypto *crypto)
{
	FUNC0(crypto->cram_hmac_tfm);
	FUNC0(crypto->integrity_tfm);
	FUNC0(crypto->csums_tfm);
	FUNC0(crypto->verify_tfm);
}