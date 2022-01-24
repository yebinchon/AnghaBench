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
struct upload_pack_options {scalar_t__ advertise_refs; int /*<<< orphan*/  daemon_mode; int /*<<< orphan*/  timeout; int /*<<< orphan*/  stateless_rpc; } ;
struct string_list {int dummy; } ;
struct packet_reader {int dummy; } ;
struct object_array {scalar_t__ nr; } ;

/* Variables and functions */
 struct object_array OBJECT_ARRAY_INIT ; 
 int PACKET_READ_CHOMP_NEWLINE ; 
 int PACKET_READ_DIE_ON_ERR_PACKET ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  check_ref ; 
 int /*<<< orphan*/  FUNC1 (struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  daemon_mode ; 
 int /*<<< orphan*/  find_symref ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct packet_reader*,struct object_array*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct packet_reader*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct packet_reader*,struct object_array*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  send_ref ; 
 int /*<<< orphan*/  stateless_rpc ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*,int) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  upload_pack_config ; 

void FUNC11(struct upload_pack_options *options)
{
	struct string_list symref = STRING_LIST_INIT_DUP;
	struct object_array want_obj = OBJECT_ARRAY_INIT;
	struct packet_reader reader;

	stateless_rpc = options->stateless_rpc;
	timeout = options->timeout;
	daemon_mode = options->daemon_mode;

	FUNC4(upload_pack_config, NULL);

	FUNC5(find_symref, &symref);

	if (options->advertise_refs || !stateless_rpc) {
		FUNC9();
		FUNC5(send_ref, &symref);
		FUNC2(send_ref, &symref);
		FUNC0(1);
		FUNC6(1);
	} else {
		FUNC5(check_ref, NULL);
		FUNC2(check_ref, NULL);
	}
	FUNC10(&symref, 1);
	if (options->advertise_refs)
		return;

	FUNC7(&reader, 0, NULL, 0,
			   PACKET_READ_CHOMP_NEWLINE |
			   PACKET_READ_DIE_ON_ERR_PACKET);

	FUNC8(&reader, &want_obj);
	if (want_obj.nr) {
		struct object_array have_obj = OBJECT_ARRAY_INIT;
		FUNC3(&reader, &have_obj, &want_obj);
		FUNC1(&have_obj, &want_obj);
	}
}