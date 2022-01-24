#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_6__ {int* keyBuffer; } ;
typedef  TYPE_1__ sha1nfo ;

/* Variables and functions */
 int BLOCK_LENGTH ; 
 int HASH_LENGTH ; 
 int HMAC_IPAD ; 
 int /*<<< orphan*/  FUNC0 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int const* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(sha1nfo *s, const uint8_t* key, int l_key)
{
	uint8_t i;
	FUNC1(s->keyBuffer, 0, BLOCK_LENGTH);
	if (l_key > BLOCK_LENGTH) {
		FUNC3(s);
		while (l_key--) FUNC4(s, *key++);
		FUNC0(s->keyBuffer, FUNC2(s), HASH_LENGTH);
	} else FUNC0(s->keyBuffer, key, l_key);
	FUNC3(s);
	for (i = 0; i < BLOCK_LENGTH; ++i)
		FUNC4(s, s->keyBuffer[i] ^ HMAC_IPAD);
}