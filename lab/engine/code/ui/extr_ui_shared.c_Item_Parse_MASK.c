#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_5__ {char* string; } ;
typedef  TYPE_1__ pc_token_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_2__ keywordHash_t ;
typedef  int /*<<< orphan*/  itemDef_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  itemParseKeywordHash ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_1__*) ; 

qboolean FUNC5(int handle, itemDef_t *item) {
	pc_token_t token;
	keywordHash_t *key;


	if (!FUNC4(handle, &token))
		return qfalse;
	if (*token.string != '{') {
		return qfalse;
	}
	while ( 1 ) {
		if (!FUNC4(handle, &token)) {
			FUNC2(handle, "end of file inside menu item");
			return qfalse;
		}

		if (*token.string == '}') {
			FUNC0( item );
			return qtrue;
		}

		key = FUNC1(itemParseKeywordHash, token.string);
		if (!key) {
			FUNC2(handle, "unknown menu item keyword %s", token.string);
			continue;
		}
		if ( !key->func(item, handle) ) {
			FUNC2(handle, "couldn't parse menu item keyword %s", token.string);
			return qfalse;
		}
	}
	return qfalse;
}