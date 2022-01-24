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
struct key_blob {int keylen; int /*<<< orphan*/ * key; int /*<<< orphan*/ * keybuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct key_blob *kb)
{
	if (kb->key && kb->key != kb->keybuf
	    && kb->keylen > sizeof(kb->keybuf)) {
		FUNC0(kb->key);
		kb->key = NULL;
	}
}