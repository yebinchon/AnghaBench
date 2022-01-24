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
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct credential {int quit; void* path; void* host; void* protocol; void* password; void* username; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct credential*,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (struct strbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 void* FUNC8 (char*) ; 

int FUNC9(struct credential *c, FILE *fp)
{
	struct strbuf line = STRBUF_INIT;

	while (FUNC3(&line, fp) != EOF) {
		char *key = line.buf;
		char *value = FUNC5(key, '=');

		if (!line.len)
			break;

		if (!value) {
			FUNC7("invalid credential line: %s", key);
			FUNC4(&line);
			return -1;
		}
		*value++ = '\0';

		if (!FUNC6(key, "username")) {
			FUNC1(c->username);
			c->username = FUNC8(value);
		} else if (!FUNC6(key, "password")) {
			FUNC1(c->password);
			c->password = FUNC8(value);
		} else if (!FUNC6(key, "protocol")) {
			FUNC1(c->protocol);
			c->protocol = FUNC8(value);
		} else if (!FUNC6(key, "host")) {
			FUNC1(c->host);
			c->host = FUNC8(value);
		} else if (!FUNC6(key, "path")) {
			FUNC1(c->path);
			c->path = FUNC8(value);
		} else if (!FUNC6(key, "url")) {
			FUNC0(c, value);
		} else if (!FUNC6(key, "quit")) {
			c->quit = !!FUNC2("quit", value);
		}
		/*
		 * Ignore other lines; we don't know what they mean, but
		 * this future-proofs us when later versions of git do
		 * learn new lines, and the helpers are updated to match.
		 */
	}

	FUNC4(&line);
	return 0;
}