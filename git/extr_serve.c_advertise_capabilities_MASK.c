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
struct strbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;
struct protocol_capability {int /*<<< orphan*/  name; scalar_t__ (* advertise ) (int /*<<< orphan*/ ,struct strbuf*) ;} ;

/* Variables and functions */
 int FUNC0 (struct protocol_capability*) ; 
 struct strbuf STRBUF_INIT ; 
 struct protocol_capability* capabilities ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC9(void)
{
	struct strbuf capability = STRBUF_INIT;
	struct strbuf value = STRBUF_INIT;
	int i;

	for (i = 0; i < FUNC0(capabilities); i++) {
		struct protocol_capability *c = &capabilities[i];

		if (c->advertise(the_repository, &value)) {
			FUNC5(&capability, c->name);

			if (value.len) {
				FUNC4(&capability, '=');
				FUNC3(&capability, &value);
			}

			FUNC4(&capability, '\n');
			FUNC2(1, capability.buf, capability.len);
		}

		FUNC7(&capability);
		FUNC7(&value);
	}

	FUNC1(1);
	FUNC6(&capability);
	FUNC6(&value);
}