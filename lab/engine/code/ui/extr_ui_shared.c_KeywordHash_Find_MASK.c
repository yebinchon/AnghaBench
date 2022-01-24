#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  keyword; struct TYPE_4__* next; } ;
typedef  TYPE_1__ keywordHash_t ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

keywordHash_t *FUNC2(keywordHash_t *table[], char *keyword)
{
	keywordHash_t *key;
	int hash;

	hash = FUNC0(keyword);
	for (key = table[hash]; key; key = key->next) {
		if (!FUNC1(key->keyword, keyword))
			return key;
	}
	return NULL;
}