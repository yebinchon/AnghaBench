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
struct aead_tfm {int /*<<< orphan*/  aead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct aead_tfm*) ; 

__attribute__((used)) static void FUNC3(void *private)
{
	struct aead_tfm *tfm = private;

	FUNC0(tfm->aead);
	FUNC1();
	FUNC2(tfm);
}