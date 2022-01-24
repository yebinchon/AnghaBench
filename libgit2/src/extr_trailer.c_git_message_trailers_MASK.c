#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* _trailer_block; int /*<<< orphan*/  count; int /*<<< orphan*/  trailers; } ;
typedef  TYPE_1__ git_message_trailer_array ;
struct TYPE_9__ {char* key; char* value; } ;
typedef  TYPE_2__ git_message_trailer ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_array_trailer_t ;
typedef  enum trailer_state { ____Placeholder_trailer_state } trailer_state ;

/* Variables and functions */
 TYPE_3__ GIT_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
#define  S_IGNORE 135 
#define  S_KEY 134 
#define  S_KEY_WS 133 
#define  S_SEP_WS 132 
#define  S_START 131 
#define  S_VALUE 130 
#define  S_VALUE_END 129 
#define  S_VALUE_NL 128 
 int /*<<< orphan*/  TRAILER_SEPARATORS ; 
 char* FUNC2 (char const*,size_t*) ; 
 TYPE_2__* FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 

int FUNC6(git_message_trailer_array *trailer_arr, const char *message)
{
	enum trailer_state state = S_START;
	int rc = 0;
	char *ptr;
	char *key = NULL;
	char *value = NULL;
	git_array_trailer_t arr = GIT_ARRAY_INIT;

	size_t trailer_len;
	char *trailer = FUNC2(message, &trailer_len);
	if (trailer == NULL)
		return -1;

	for (ptr = trailer;;) {
		switch (state) {
			case S_START: {
				if (*ptr == 0) {
					goto ret;
				}

				key = ptr;
				FUNC0(S_KEY);
			}
			case S_KEY: {
				if (*ptr == 0) {
					goto ret;
				}

				if (FUNC4(*ptr) || *ptr == '-') {
					/* legal key character */
					FUNC1(S_KEY);
				}

				if (*ptr == ' ' || *ptr == '\t') {
					/* optional whitespace before separator */
					*ptr = 0;
					FUNC1(S_KEY_WS);
				}

				if (FUNC5(TRAILER_SEPARATORS, *ptr)) {
					*ptr = 0;
					FUNC1(S_SEP_WS);
				}

				/* illegal character */
				FUNC0(S_IGNORE);
			}
			case S_KEY_WS: {
				if (*ptr == 0) {
					goto ret;
				}

				if (*ptr == ' ' || *ptr == '\t') {
					FUNC1(S_KEY_WS);
				}

				if (FUNC5(TRAILER_SEPARATORS, *ptr)) {
					FUNC1(S_SEP_WS);
				}

				/* illegal character */
				FUNC0(S_IGNORE);
			}
			case S_SEP_WS: {
				if (*ptr == 0) {
					goto ret;
				}

				if (*ptr == ' ' || *ptr == '\t') {
					FUNC1(S_SEP_WS);
				}

				value = ptr;
				FUNC1(S_VALUE);
			}
			case S_VALUE: {
				if (*ptr == 0) {
					FUNC0(S_VALUE_END);
				}

				if (*ptr == '\n') {
					FUNC1(S_VALUE_NL);
				}

				FUNC1(S_VALUE);
			}
			case S_VALUE_NL: {
				if (*ptr == ' ') {
					/* continuation; */
					FUNC1(S_VALUE);
				}

				ptr[-1] = 0;
				FUNC0(S_VALUE_END);
			}
			case S_VALUE_END: {
				git_message_trailer *t = FUNC3(arr);

				t->key = key;
				t->value = value;

				key = NULL;
				value = NULL;

				FUNC0(S_START);
			}
			case S_IGNORE: {
				if (*ptr == 0) {
					goto ret;
				}

				if (*ptr == '\n') {
					FUNC1(S_START);
				}

				FUNC1(S_IGNORE);
			}
		}
	}

ret:
	trailer_arr->_trailer_block = trailer;
	trailer_arr->trailers = arr.ptr;
	trailer_arr->count = arr.size;

	return rc;
}