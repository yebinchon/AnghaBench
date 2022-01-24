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
struct xml_ctx {char* cdata; scalar_t__ name; scalar_t__ userData; } ;
struct remote_ls_ctx {int dentry_flags; int flags; scalar_t__ dentry_name; int /*<<< orphan*/  (* userFunc ) (struct remote_ls_ctx*) ;int /*<<< orphan*/  userData; int /*<<< orphan*/  path; } ;
struct TYPE_2__ {char* url; char* path; int /*<<< orphan*/  path_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAV_PROPFIND_COLLECTION ; 
 int /*<<< orphan*/  DAV_PROPFIND_NAME ; 
 int /*<<< orphan*/  DAV_PROPFIND_RESP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int IS_DIR ; 
 int PROCESS_DIRS ; 
 int PROCESS_FILES ; 
 int RECURSIVE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/  (*) (struct remote_ls_ctx*),int /*<<< orphan*/ ) ; 
 TYPE_1__* repo ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 char* FUNC4 (char*,char) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct remote_ls_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct remote_ls_ctx*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(struct xml_ctx *ctx, int tag_closed)
{
	struct remote_ls_ctx *ls = (struct remote_ls_ctx *)ctx->userData;

	if (tag_closed) {
		if (!FUNC5(ctx->name, DAV_PROPFIND_RESP) && ls->dentry_name) {
			if (ls->dentry_flags & IS_DIR) {

				/* ensure collection names end with slash */
				FUNC3(ls->dentry_name, &ls->dentry_name);

				if (ls->flags & PROCESS_DIRS) {
					ls->userFunc(ls);
				}
				if (FUNC5(ls->dentry_name, ls->path) &&
				    ls->flags & RECURSIVE) {
					FUNC2(ls->dentry_name,
						  ls->flags,
						  ls->userFunc,
						  ls->userData);
				}
			} else if (ls->flags & PROCESS_FILES) {
				ls->userFunc(ls);
			}
		} else if (!FUNC5(ctx->name, DAV_PROPFIND_NAME) && ctx->cdata) {
			char *path = ctx->cdata;
			if (*ctx->cdata == 'h') {
				path = FUNC7(path, "//");
				if (path) {
					path = FUNC4(path+2, '/');
				}
			}
			if (path) {
				const char *url = repo->url;
				if (repo->path)
					url = repo->path;
				if (FUNC6(path, url, repo->path_len))
					FUNC1("Parsed path '%s' does not match url: '%s'",
					      path, url);
				else {
					path += repo->path_len;
					ls->dentry_name = FUNC10(path);
				}
			}
		} else if (!FUNC5(ctx->name, DAV_PROPFIND_COLLECTION)) {
			ls->dentry_flags |= IS_DIR;
		}
	} else if (!FUNC5(ctx->name, DAV_PROPFIND_RESP)) {
		FUNC0(ls->dentry_name);
		ls->dentry_flags = 0;
	}
}