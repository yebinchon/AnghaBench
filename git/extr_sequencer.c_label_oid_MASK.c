#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  oid; } ;
struct string_entry {char const* string; TYPE_2__ entry; } ;
struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
struct labels_entry {char const* string; TYPE_2__ entry; } ;
struct label_state {int /*<<< orphan*/  commit2label; int /*<<< orphan*/  labels; struct strbuf buf; } ;
struct TYPE_4__ {size_t hexsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_entry*,char const*,char const*) ; 
 int /*<<< orphan*/  GIT_MAX_HEXSZ ; 
 int /*<<< orphan*/  default_abbrev ; 
 int /*<<< orphan*/  FUNC1 (char*,struct object_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct object_id*) ; 
 struct string_entry* FUNC8 (int /*<<< orphan*/ *,struct object_id*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct string_entry*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 char const* string ; 
 int FUNC16 (char const*) ; 
 TYPE_1__* the_hash_algo ; 

__attribute__((used)) static const char *FUNC17(struct object_id *oid, const char *label,
			     struct label_state *state)
{
	struct labels_entry *labels_entry;
	struct string_entry *string_entry;
	struct object_id dummy;
	size_t len;
	int i;

	string_entry = FUNC8(&state->commit2label, oid);
	if (string_entry)
		return string_entry->string;

	/*
	 * For "uninteresting" commits, i.e. commits that are not to be
	 * rebased, and which can therefore not be labeled, we use a unique
	 * abbreviation of the commit name. This is slightly more complicated
	 * than calling find_unique_abbrev() because we also need to make
	 * sure that the abbreviation does not conflict with any other
	 * label.
	 *
	 * We disallow "interesting" commits to be labeled by a string that
	 * is a valid full-length hash, to ensure that we always can find an
	 * abbreviation for any uninteresting commit's names that does not
	 * clash with any other label.
	 */
	if (!label) {
		char *p;

		FUNC13(&state->buf);
		FUNC12(&state->buf, GIT_MAX_HEXSZ);
		label = p = state->buf.buf;

		FUNC1(p, oid, default_abbrev);

		/*
		 * We may need to extend the abbreviated hash so that there is
		 * no conflicting label.
		 */
		if (FUNC5(&state->labels, FUNC15(p), p)) {
			size_t i = FUNC16(p) + 1;

			FUNC6(p, oid);
			for (; i < the_hash_algo->hexsz; i++) {
				char save = p[i];
				p[i] = '\0';
				if (!FUNC5(&state->labels,
							   FUNC15(p), p))
					break;
				p[i] = save;
			}
		}
	} else if (((len = FUNC16(label)) == the_hash_algo->hexsz &&
		    !FUNC2(label, &dummy)) ||
		   (len == 1 && *label == '#') ||
		   FUNC5(&state->labels,
					 FUNC15(label), label)) {
		/*
		 * If the label already exists, or if the label is a valid full
		 * OID, or the label is a '#' (which we use as a separator
		 * between merge heads and oneline), we append a dash and a
		 * number to make it unique.
		 */
		struct strbuf *buf = &state->buf;

		FUNC13(buf);
		FUNC10(buf, label, len);

		for (i = 2; ; i++) {
			FUNC14(buf, len);
			FUNC11(buf, "-%d", i);
			if (!FUNC5(&state->labels,
						   FUNC15(buf->buf),
						   buf->buf))
				break;
		}

		label = buf->buf;
	}

	FUNC0(labels_entry, label, label);
	FUNC4(&labels_entry->entry, FUNC15(label));
	FUNC3(&state->labels, &labels_entry->entry);

	FUNC0(string_entry, string, label);
	FUNC7(&string_entry->entry.oid, oid);
	FUNC9(&state->commit2label, string_entry);

	return string_entry->string;
}