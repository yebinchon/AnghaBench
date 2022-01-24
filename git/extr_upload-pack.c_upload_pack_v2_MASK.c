#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct upload_pack_data {int /*<<< orphan*/  writer; TYPE_1__ haves; } ;
struct repository {int dummy; } ;
struct packet_reader {int dummy; } ;
struct object_array {int /*<<< orphan*/  nr; } ;
struct argv_array {int dummy; } ;
typedef  enum fetch_state { ____Placeholder_fetch_state } fetch_state ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_FLAGS ; 
#define  FETCH_DONE 131 
#define  FETCH_PROCESS_ARGS 130 
#define  FETCH_SEND_ACKS 129 
#define  FETCH_SEND_PACK 128 
 int /*<<< orphan*/  LARGE_PACKET_MAX ; 
 struct object_array OBJECT_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object_array*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct packet_reader*,struct upload_pack_data*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC6 (struct upload_pack_data*,struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC7 (struct upload_pack_data*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC8 (struct upload_pack_data*) ; 
 int /*<<< orphan*/  upload_pack_config ; 
 int /*<<< orphan*/  FUNC9 (struct upload_pack_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct upload_pack_data*) ; 
 int /*<<< orphan*/  use_sideband ; 

int FUNC11(struct repository *r, struct argv_array *keys,
		   struct packet_reader *request)
{
	enum fetch_state state = FETCH_PROCESS_ARGS;
	struct upload_pack_data data;
	struct object_array have_obj = OBJECT_ARRAY_INIT;
	struct object_array want_obj = OBJECT_ARRAY_INIT;

	FUNC0(ALL_FLAGS);

	FUNC2(upload_pack_config, NULL);

	FUNC10(&data);
	use_sideband = LARGE_PACKET_MAX;

	while (state != FETCH_DONE) {
		switch (state) {
		case FETCH_PROCESS_ARGS:
			FUNC5(request, &data, &want_obj);

			if (!want_obj.nr) {
				/*
				 * Request didn't contain any 'want' lines,
				 * guess they didn't want anything.
				 */
				state = FETCH_DONE;
			} else if (data.haves.nr) {
				/*
				 * Request had 'have' lines, so lets ACK them.
				 */
				state = FETCH_SEND_ACKS;
			} else {
				/*
				 * Request had 'want's but no 'have's so we can
				 * immedietly go to construct and send a pack.
				 */
				state = FETCH_SEND_PACK;
			}
			break;
		case FETCH_SEND_ACKS:
			if (FUNC6(&data, &have_obj,
							&want_obj))
				state = FETCH_SEND_PACK;
			else
				state = FETCH_DONE;
			break;
		case FETCH_SEND_PACK:
			FUNC8(&data);
			FUNC7(&data, &want_obj);

			FUNC4(&data.writer, "packfile\n");
			FUNC1(&have_obj, &want_obj);
			state = FETCH_DONE;
			break;
		case FETCH_DONE:
			continue;
		}
	}

	FUNC9(&data);
	FUNC3(&have_obj);
	FUNC3(&want_obj);
	return 0;
}