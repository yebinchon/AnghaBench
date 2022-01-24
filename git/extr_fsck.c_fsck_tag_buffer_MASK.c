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
struct TYPE_4__ {int /*<<< orphan*/  oid; } ;
struct tag {TYPE_1__ object; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct fsck_options {int dummy; } ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FSCK_MSG_BAD_OBJECT_SHA1 ; 
 int /*<<< orphan*/  FSCK_MSG_BAD_TAG_NAME ; 
 int /*<<< orphan*/  FSCK_MSG_BAD_TYPE ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_OBJECT ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TAG ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TAGGER_ENTRY ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TAG_ENTRY ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TAG_OBJECT ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TYPE ; 
 int /*<<< orphan*/  FSCK_MSG_MISSING_TYPE_ENTRY ; 
 int /*<<< orphan*/  FSCK_MSG_TAG_OBJECT_NOT_TAG ; 
 int OBJ_TAG ; 
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const**,TYPE_1__*,struct fsck_options*) ; 
 scalar_t__ FUNC3 (char const*,struct object_id*,char const**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int*,unsigned long*) ; 
 int FUNC5 (struct fsck_options*,TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 char* FUNC9 (char const*,char) ; 
 scalar_t__ FUNC10 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char const*,unsigned long,TYPE_1__*,struct fsck_options*) ; 

__attribute__((used)) static int FUNC13(struct tag *tag, const char *data,
	unsigned long size, struct fsck_options *options)
{
	struct object_id oid;
	int ret = 0;
	const char *buffer;
	char *to_free = NULL, *eol;
	struct strbuf sb = STRBUF_INIT;
	const char *p;

	if (data)
		buffer = data;
	else {
		enum object_type type;

		buffer = to_free =
			FUNC4(&tag->object.oid, &type, &size);
		if (!buffer)
			return FUNC5(options, &tag->object,
				FSCK_MSG_MISSING_TAG_OBJECT,
				"cannot read tag object");

		if (type != OBJ_TAG) {
			ret = FUNC5(options, &tag->object,
				FSCK_MSG_TAG_OBJECT_NOT_TAG,
				"expected tag got %s",
			    FUNC11(type));
			goto done;
		}
	}

	ret = FUNC12(buffer, size, &tag->object, options);
	if (ret)
		goto done;

	if (!FUNC6(buffer, "object ", &buffer)) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_OBJECT, "invalid format - expected 'object' line");
		goto done;
	}
	if (FUNC3(buffer, &oid, &p) || *p != '\n') {
		ret = FUNC5(options, &tag->object, FSCK_MSG_BAD_OBJECT_SHA1, "invalid 'object' line format - bad sha1");
		if (ret)
			goto done;
	}
	buffer = p + 1;

	if (!FUNC6(buffer, "type ", &buffer)) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_TYPE_ENTRY, "invalid format - expected 'type' line");
		goto done;
	}
	eol = FUNC9(buffer, '\n');
	if (!eol) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_TYPE, "invalid format - unexpected end after 'type' line");
		goto done;
	}
	if (FUNC10(buffer, eol - buffer, 1) < 0)
		ret = FUNC5(options, &tag->object, FSCK_MSG_BAD_TYPE, "invalid 'type' value");
	if (ret)
		goto done;
	buffer = eol + 1;

	if (!FUNC6(buffer, "tag ", &buffer)) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_TAG_ENTRY, "invalid format - expected 'tag' line");
		goto done;
	}
	eol = FUNC9(buffer, '\n');
	if (!eol) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_TAG, "invalid format - unexpected end after 'type' line");
		goto done;
	}
	FUNC7(&sb, "refs/tags/%.*s", (int)(eol - buffer), buffer);
	if (FUNC0(sb.buf, 0)) {
		ret = FUNC5(options, &tag->object, FSCK_MSG_BAD_TAG_NAME,
			   "invalid 'tag' name: %.*s",
			   (int)(eol - buffer), buffer);
		if (ret)
			goto done;
	}
	buffer = eol + 1;

	if (!FUNC6(buffer, "tagger ", &buffer)) {
		/* early tags do not contain 'tagger' lines; warn only */
		ret = FUNC5(options, &tag->object, FSCK_MSG_MISSING_TAGGER_ENTRY, "invalid format - expected 'tagger' line");
		if (ret)
			goto done;
	}
	else
		ret = FUNC2(&buffer, &tag->object, options);

done:
	FUNC8(&sb);
	FUNC1(to_free);
	return ret;
}