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
struct xml_ctx {char const* name; int len; int /*<<< orphan*/  (* userFunc ) (struct xml_ctx*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct xml_ctx*,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int,char*,char const*) ; 

__attribute__((used)) static void
FUNC6(void *userData, const char *name, const char **atts)
{
	struct xml_ctx *ctx = (struct xml_ctx *)userData;
	const char *c = FUNC1(name, ':');
	int old_namelen, new_len;

	if (c == NULL)
		c = name;
	else
		c++;

	old_namelen = FUNC2(ctx->name);
	new_len = old_namelen + FUNC2(c) + 2;

	if (new_len > ctx->len) {
		ctx->name = FUNC4(ctx->name, new_len);
		ctx->len = new_len;
	}
	FUNC5(ctx->name + old_namelen, ctx->len - old_namelen, ".%s", c);

	FUNC0(ctx->cdata);

	ctx->userFunc(ctx, 0);
}