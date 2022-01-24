#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tag {int tag; TYPE_5__* tagged; } ;
struct strbuf {size_t len; int /*<<< orphan*/  buf; } ;
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_extra_header {size_t len; scalar_t__ value; } ;
struct commit {TYPE_4__* parents; } ;
struct TYPE_13__ {int hash; } ;
struct TYPE_12__ {TYPE_6__ oid; } ;
struct TYPE_11__ {TYPE_3__* next; } ;
struct TYPE_10__ {TYPE_2__* item; } ;
struct TYPE_8__ {int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJ_TAG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t,int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC1 (struct commit*) ; 
 struct tag* FUNC2 (int /*<<< orphan*/ ,struct object_id*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (scalar_t__,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct tag*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct rev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,size_t,scalar_t__,size_t,struct strbuf*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_6__*,struct commit*) ; 

__attribute__((used)) static int FUNC14(struct commit *commit,
			     struct commit_extra_header *extra,
			     void *data)
{
	struct rev_info *opt = (struct rev_info *)data;
	struct object_id oid;
	struct tag *tag;
	struct strbuf verify_message;
	int status, nth;
	size_t payload_size, gpg_message_offset;

	FUNC0(extra->value, extra->len, FUNC11(OBJ_TAG), &oid);
	tag = FUNC2(the_repository, &oid);
	if (!tag)
		return -1; /* error message already given */

	FUNC9(&verify_message, 256);
	if (FUNC5(the_repository, tag, extra->value, extra->len))
		FUNC8(&verify_message, "malformed mergetag\n");
	else if (FUNC1(commit) &&
		 FUNC3(&tag->tagged->oid,
		       &commit->parents->next->item->object.oid))
		FUNC7(&verify_message,
			    "merged tag '%s'\n", tag->tag);
	else if ((nth = FUNC13(&tag->tagged->oid, commit)) < 0)
		FUNC7(&verify_message, "tag %s names a non-parent %s\n",
				    tag->tag, tag->tagged->oid.hash);
	else
		FUNC7(&verify_message,
			    "parent #%d, tagged '%s'\n", nth + 1, tag->tag);
	gpg_message_offset = verify_message.len;

	payload_size = FUNC4(extra->value, extra->len);
	status = -1;
	if (extra->len > payload_size) {
		/* could have a good signature */
		if (!FUNC12(extra->value, payload_size,
					  extra->value + payload_size,
					  extra->len - payload_size,
					  &verify_message, NULL))
			status = 0; /* good */
		else if (verify_message.len <= gpg_message_offset)
			FUNC8(&verify_message, "No signature\n");
		/* otherwise we couldn't verify, which is shown as bad */
	}

	FUNC6(opt, status, verify_message.buf);
	FUNC10(&verify_message);
	return 0;
}