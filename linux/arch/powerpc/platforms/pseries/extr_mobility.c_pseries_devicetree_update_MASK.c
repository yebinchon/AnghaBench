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
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
#define  ADD_DT_NODE 130 
#define  DELETE_DT_NODE 129 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NODE_ACTION_MASK ; 
 int NODE_COUNT_MASK ; 
 int /*<<< orphan*/  PRRN_SCOPE ; 
 int /*<<< orphan*/  RTAS_DATA_BUF_SIZE ; 
 int RTAS_UNKNOWN_SERVICE ; 
#define  UPDATE_DT_NODE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(s32 scope)
{
	char *rtas_buf;
	__be32 *data;
	int update_nodes_token;
	int rc;

	update_nodes_token = FUNC8("ibm,update-nodes");
	if (update_nodes_token == RTAS_UNKNOWN_SERVICE)
		return -EINVAL;

	rtas_buf = FUNC5(RTAS_DATA_BUF_SIZE, GFP_KERNEL);
	if (!rtas_buf)
		return -ENOMEM;

	do {
		rc = FUNC6(update_nodes_token, rtas_buf, scope);
		if (rc && rc != 1)
			break;

		data = (__be32 *)rtas_buf + 4;
		while (FUNC1(*data) & NODE_ACTION_MASK) {
			int i;
			u32 action = FUNC1(*data) & NODE_ACTION_MASK;
			u32 node_count = FUNC1(*data) & NODE_COUNT_MASK;

			data++;

			for (i = 0; i < node_count; i++) {
				__be32 phandle = *data++;
				__be32 drc_index;

				switch (action) {
				case DELETE_DT_NODE:
					FUNC3(phandle);
					break;
				case UPDATE_DT_NODE:
					FUNC9(phandle, scope);

					if (scope == PRRN_SCOPE)
						FUNC7(phandle);

					break;
				case ADD_DT_NODE:
					drc_index = *data++;
					FUNC0(phandle, drc_index);
					break;
				}

				FUNC2();
			}
		}

		FUNC2();
	} while (rc == 1);

	FUNC4(rtas_buf);
	return rc;
}