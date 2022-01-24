#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int type; char* tag_name; char* tagger; char* message; int /*<<< orphan*/  target; } ;
typedef  TYPE_1__ git_tag ;
typedef  int /*<<< orphan*/  git_signature ;

/* Variables and functions */
 unsigned int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t,int) ; 
 unsigned int GIT_OBJECT_INVALID ; 
 void* FUNC3 (size_t) ; 
 char* FUNC4 (char const*,int,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const**,char const*,char*) ; 
 scalar_t__ FUNC6 (char*,char const**,char const*,char*,char) ; 
 char* FUNC7 (char const*,char,int) ; 
 scalar_t__ FUNC8 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,size_t) ; 
 size_t FUNC10 (char const*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(git_tag *tag, const char *buffer, const char *buffer_end)
{
	static const char *tag_types[] = {
		NULL, "commit\n", "tree\n", "blob\n", "tag\n"
	};
	size_t text_len, alloc_len;
	const char *search;
	unsigned int i;

	if (FUNC5(&tag->target, &buffer, buffer_end, "object ") < 0)
		return FUNC11("object field invalid");

	if (buffer + 5 >= buffer_end)
		return FUNC11("object too short");

	if (FUNC8(buffer, "type ", 5) != 0)
		return FUNC11("type field not found");
	buffer += 5;

	tag->type = GIT_OBJECT_INVALID;

	for (i = 1; i < FUNC0(tag_types); ++i) {
		size_t type_length = FUNC10(tag_types[i]);

		if (buffer + type_length >= buffer_end)
			return FUNC11("object too short");

		if (FUNC8(buffer, tag_types[i], type_length) == 0) {
			tag->type = i;
			buffer += type_length;
			break;
		}
	}

	if (tag->type == GIT_OBJECT_INVALID)
		return FUNC11("invalid object type");

	if (buffer + 4 >= buffer_end)
		return FUNC11("object too short");

	if (FUNC8(buffer, "tag ", 4) != 0)
		return FUNC11("tag field not found");

	buffer += 4;

	search = FUNC7(buffer, '\n', buffer_end - buffer);
	if (search == NULL)
		return FUNC11("object too short");

	text_len = search - buffer;

	FUNC2(&alloc_len, text_len, 1);
	tag->tag_name = FUNC3(alloc_len);
	FUNC1(tag->tag_name);

	FUNC9(tag->tag_name, buffer, text_len);
	tag->tag_name[text_len] = '\0';

	buffer = search + 1;

	tag->tagger = NULL;
	if (buffer < buffer_end && *buffer != '\n') {
		tag->tagger = FUNC3(sizeof(git_signature));
		FUNC1(tag->tagger);

		if (FUNC6(tag->tagger, &buffer, buffer_end, "tagger ", '\n') < 0)
			return -1;
	}

	tag->message = NULL;
	if (buffer < buffer_end) {
		/* If we're not at the end of the header, search for it */
		if(*buffer != '\n') {
			search = FUNC4(buffer, buffer_end - buffer,
					     "\n\n", 2);
			if (search)
				buffer = search + 1;
			else
				return FUNC11("tag contains no message");
		}

		text_len = buffer_end - ++buffer;

		FUNC2(&alloc_len, text_len, 1);
		tag->message = FUNC3(alloc_len);
		FUNC1(tag->message);

		FUNC9(tag->message, buffer, text_len);
		tag->message[text_len] = '\0';
	}

	return 0;
}