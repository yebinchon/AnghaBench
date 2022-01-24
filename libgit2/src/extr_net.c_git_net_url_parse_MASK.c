#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct http_parser_url {int field_set; TYPE_1__* field_data; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {void* password; void* username; void* query; void* path; void* port; void* host; void* scheme; } ;
typedef  TYPE_2__ git_net_url ;
struct TYPE_14__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ git_buf ;
struct TYPE_12__ {int off; size_t len; } ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_EINVALIDSPEC ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int UF_HOST ; 
 int UF_PATH ; 
 int UF_PORT ; 
 int UF_QUERY ; 
 int UF_SCHEMA ; 
 int UF_USERINFO ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,size_t) ; 
 void* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ,int,struct http_parser_url*) ; 
 char* FUNC10 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

int FUNC12(git_net_url *url, const char *given)
{
	struct http_parser_url u = {0};
	bool has_scheme, has_host, has_port, has_path, has_query, has_userinfo;
	git_buf scheme = GIT_BUF_INIT,
		host = GIT_BUF_INIT,
		port = GIT_BUF_INIT,
		path = GIT_BUF_INIT,
		username = GIT_BUF_INIT,
		password = GIT_BUF_INIT,
		query = GIT_BUF_INIT;
	int error = GIT_EINVALIDSPEC;

	if (FUNC9(given, FUNC11(given), false, &u)) {
		FUNC8(GIT_ERROR_NET, "malformed URL '%s'", given);
		goto done;
	}

	has_scheme = !!(u.field_set & (1 << UF_SCHEMA));
	has_host = !!(u.field_set & (1 << UF_HOST));
	has_port = !!(u.field_set & (1 << UF_PORT));
	has_path = !!(u.field_set & (1 << UF_PATH));
	has_query = !!(u.field_set & (1 << UF_QUERY));
	has_userinfo = !!(u.field_set & (1 << UF_USERINFO));

	if (has_scheme) {
		const char *url_scheme = given + u.field_data[UF_SCHEMA].off;
		size_t url_scheme_len = u.field_data[UF_SCHEMA].len;
		FUNC6(&scheme, url_scheme, url_scheme_len);
		FUNC1(scheme.ptr, scheme.size);
	} else {
		FUNC8(GIT_ERROR_NET, "malformed URL '%s'", given);
		goto done;
	}

	if (has_host) {
		const char *url_host = given + u.field_data[UF_HOST].off;
		size_t url_host_len = u.field_data[UF_HOST].len;
		FUNC2(&host, url_host, url_host_len);
	}

	if (has_port) {
		const char *url_port = given + u.field_data[UF_PORT].off;
		size_t url_port_len = u.field_data[UF_PORT].len;
		FUNC6(&port, url_port, url_port_len);
	} else {
		const char *default_port = FUNC0(scheme.ptr);

		if (default_port == NULL) {
			FUNC8(GIT_ERROR_NET, "unknown scheme for URL '%s'", given);
			goto done;
		}

		FUNC7(&port, default_port);
	}

	if (has_path) {
		const char *url_path = given + u.field_data[UF_PATH].off;
		size_t url_path_len = u.field_data[UF_PATH].len;
		FUNC6(&path, url_path, url_path_len);
	} else {
		FUNC7(&path, "/");
	}

	if (has_query) {
		const char *url_query = given + u.field_data[UF_QUERY].off;
		size_t url_query_len = u.field_data[UF_QUERY].len;
		FUNC2(&query, url_query, url_query_len);
	}

	if (has_userinfo) {
		const char *url_userinfo = given + u.field_data[UF_USERINFO].off;
		size_t url_userinfo_len = u.field_data[UF_USERINFO].len;
		const char *colon = FUNC10(url_userinfo, ':', url_userinfo_len);

		if (colon) {
			const char *url_username = url_userinfo;
			size_t url_username_len = colon - url_userinfo;
			const char *url_password = colon + 1;
			size_t url_password_len = url_userinfo_len - (url_username_len + 1);

			FUNC2(&username, url_username, url_username_len);
			FUNC2(&password, url_password, url_password_len);
		} else {
			FUNC2(&username, url_userinfo, url_userinfo_len);
		}
	}

	if (FUNC5(&scheme) ||
	    FUNC5(&host) ||
	    FUNC5(&port) ||
	    FUNC5(&path) ||
	    FUNC5(&query) ||
	    FUNC5(&username) ||
	    FUNC5(&password))
		return -1;

	url->scheme = FUNC3(&scheme);
	url->host = FUNC3(&host);
	url->port = FUNC3(&port);
	url->path = FUNC3(&path);
	url->query = FUNC3(&query);
	url->username = FUNC3(&username);
	url->password = FUNC3(&password);

	error = 0;

done:
	FUNC4(&scheme);
	FUNC4(&host);
	FUNC4(&port);
	FUNC4(&path);
	FUNC4(&query);
	FUNC4(&username);
	FUNC4(&password);
	return error;
}