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
struct rewrite {int dummy; } ;
struct remote {int configured_in_repo; char const* receivepack; char const* uploadpack; int fetch_tags; char const* foreign_vcs; int /*<<< orphan*/  http_proxy_authmethod; int /*<<< orphan*/  http_proxy; int /*<<< orphan*/  fetch; int /*<<< orphan*/  push; void* prune_tags; void* prune; void* skip_default_update; void* mirror; int /*<<< orphan*/  origin; } ;
struct branch {char const* remote_name; char const* pushremote_name; } ;

/* Variables and functions */
 scalar_t__ CONFIG_SCOPE_REPO ; 
 int /*<<< orphan*/  REMOTE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewrite*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct branch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct remote*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct remote*,char const*) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* FUNC9 (char const*,char const*) ; 
 int FUNC10 (char const**,char const*,char const*) ; 
 struct branch* FUNC11 (char const*,int) ; 
 struct remote* FUNC12 (char const*,int) ; 
 struct rewrite* FUNC13 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC14 (char const*,char*,char const**,int*,char const**) ; 
 char const* pushremote_name ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  rewrites ; 
 int /*<<< orphan*/  rewrites_push ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 

__attribute__((used)) static int FUNC19(const char *key, const char *value, void *cb)
{
	const char *name;
	int namelen;
	const char *subkey;
	struct remote *remote;
	struct branch *branch;
	if (FUNC14(key, "branch", &name, &namelen, &subkey) >= 0) {
		if (!name)
			return 0;
		branch = FUNC11(name, namelen);
		if (!FUNC16(subkey, "remote")) {
			return FUNC10(&branch->remote_name, key, value);
		} else if (!FUNC16(subkey, "pushremote")) {
			return FUNC10(&branch->pushremote_name, key, value);
		} else if (!FUNC16(subkey, "merge")) {
			if (!value)
				return FUNC5(key);
			FUNC2(branch, FUNC18(value));
		}
		return 0;
	}
	if (FUNC14(key, "url", &name, &namelen, &subkey) >= 0) {
		struct rewrite *rewrite;
		if (!name)
			return 0;
		if (!FUNC16(subkey, "insteadof")) {
			if (!value)
				return FUNC5(key);
			rewrite = FUNC13(&rewrites, name, namelen);
			FUNC1(rewrite, FUNC18(value));
		} else if (!FUNC16(subkey, "pushinsteadof")) {
			if (!value)
				return FUNC5(key);
			rewrite = FUNC13(&rewrites_push, name, namelen);
			FUNC1(rewrite, FUNC18(value));
		}
	}

	if (FUNC14(key, "remote", &name, &namelen, &subkey) < 0)
		return 0;

	/* Handle remote.* variables */
	if (!name && !FUNC16(subkey, "pushdefault"))
		return FUNC10(&pushremote_name, key, value);

	if (!name)
		return 0;
	/* Handle remote.<name>.* variables */
	if (*name == '/') {
		FUNC17(FUNC0("config remote shorthand cannot begin with '/': %s"),
			name);
		return 0;
	}
	remote = FUNC12(name, namelen);
	remote->origin = REMOTE_CONFIG;
	if (FUNC6() == CONFIG_SCOPE_REPO)
		remote->configured_in_repo = 1;
	if (!FUNC16(subkey, "mirror"))
		remote->mirror = FUNC9(key, value);
	else if (!FUNC16(subkey, "skipdefaultupdate"))
		remote->skip_default_update = FUNC9(key, value);
	else if (!FUNC16(subkey, "skipfetchall"))
		remote->skip_default_update = FUNC9(key, value);
	else if (!FUNC16(subkey, "prune"))
		remote->prune = FUNC9(key, value);
	else if (!FUNC16(subkey, "prunetags"))
		remote->prune_tags = FUNC9(key, value);
	else if (!FUNC16(subkey, "url")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		FUNC4(remote, v);
	} else if (!FUNC16(subkey, "pushurl")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		FUNC3(remote, v);
	} else if (!FUNC16(subkey, "push")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		FUNC15(&remote->push, v);
		FUNC8((char *)v);
	} else if (!FUNC16(subkey, "fetch")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		FUNC15(&remote->fetch, v);
		FUNC8((char *)v);
	} else if (!FUNC16(subkey, "receivepack")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		if (!remote->receivepack)
			remote->receivepack = v;
		else
			FUNC7(FUNC0("more than one receivepack given, using the first"));
	} else if (!FUNC16(subkey, "uploadpack")) {
		const char *v;
		if (FUNC10(&v, key, value))
			return -1;
		if (!remote->uploadpack)
			remote->uploadpack = v;
		else
			FUNC7(FUNC0("more than one uploadpack given, using the first"));
	} else if (!FUNC16(subkey, "tagopt")) {
		if (!FUNC16(value, "--no-tags"))
			remote->fetch_tags = -1;
		else if (!FUNC16(value, "--tags"))
			remote->fetch_tags = 2;
	} else if (!FUNC16(subkey, "proxy")) {
		return FUNC10((const char **)&remote->http_proxy,
					 key, value);
	} else if (!FUNC16(subkey, "proxyauthmethod")) {
		return FUNC10((const char **)&remote->http_proxy_authmethod,
					 key, value);
	} else if (!FUNC16(subkey, "vcs")) {
		return FUNC10(&remote->foreign_vcs, key, value);
	}
	return 0;
}