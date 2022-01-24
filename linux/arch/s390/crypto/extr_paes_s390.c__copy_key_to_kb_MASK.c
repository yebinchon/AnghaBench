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
typedef  int /*<<< orphan*/  u8 ;
struct key_blob {unsigned int keylen; int /*<<< orphan*/  key; int /*<<< orphan*/  keybuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static inline int FUNC2(struct key_blob *kb,
				  const u8 *key,
				  unsigned int keylen)
{
	if (keylen <= sizeof(kb->keybuf))
		kb->key = kb->keybuf;
	else {
		kb->key = FUNC0(keylen, GFP_KERNEL);
		if (!kb->key)
			return -ENOMEM;
	}
	FUNC1(kb->key, key, keylen);
	kb->keylen = keylen;

	return 0;
}