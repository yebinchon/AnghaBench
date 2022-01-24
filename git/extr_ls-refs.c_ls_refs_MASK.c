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
struct repository {int dummy; } ;
struct packet_reader {char* line; } ;
struct ls_refs_data {int peel; int symrefs; int /*<<< orphan*/  prefixes; } ;
struct argv_array {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ PACKET_READ_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ls_refs_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ls_refs_data*) ; 
 int /*<<< orphan*/  ls_refs_config ; 
 int /*<<< orphan*/  FUNC5 (struct ls_refs_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct packet_reader*) ; 
 int /*<<< orphan*/  send_ref ; 
 scalar_t__ FUNC8 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

int FUNC10(struct repository *r, struct argv_array *keys,
	    struct packet_reader *request)
{
	struct ls_refs_data data;

	FUNC5(&data, 0, sizeof(data));

	FUNC3(ls_refs_config, NULL);

	while (FUNC7(request) != PACKET_READ_FLUSH) {
		const char *arg = request->line;
		const char *out;

		if (!FUNC9("peel", arg))
			data.peel = 1;
		else if (!FUNC9("symrefs", arg))
			data.symrefs = 1;
		else if (FUNC8(arg, "ref-prefix ", &out))
			FUNC1(&data.prefixes, out);
	}

	FUNC4(send_ref, &data);
	FUNC2(send_ref, &data);
	FUNC6(1);
	FUNC0(&data.prefixes);
	return 0;
}