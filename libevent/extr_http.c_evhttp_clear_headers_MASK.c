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
struct evkeyvalq {int dummy; } ;
struct evkeyval {struct evkeyval* value; struct evkeyval* key; } ;

/* Variables and functions */
 struct evkeyval* FUNC0 (struct evkeyvalq*) ; 
 int /*<<< orphan*/  FUNC1 (struct evkeyvalq*,struct evkeyval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evkeyval*) ; 
 int /*<<< orphan*/  next ; 

void
FUNC3(struct evkeyvalq *headers)
{
	struct evkeyval *header;

	for (header = FUNC0(headers);
	    header != NULL;
	    header = FUNC0(headers)) {
		FUNC1(headers, header, next);
		FUNC2(header->key);
		FUNC2(header->value);
		FUNC2(header);
	}
}