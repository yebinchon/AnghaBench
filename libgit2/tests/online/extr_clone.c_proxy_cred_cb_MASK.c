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
typedef  int /*<<< orphan*/  git_cred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  _remote_proxy_pass ; 
 int /*<<< orphan*/  _remote_proxy_user ; 
 int called_proxy_creds ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(git_cred **out, const char *url, const char *username, unsigned int allowed, void *payload)
{
	FUNC0(url);
	FUNC0(username);
	FUNC0(allowed);
	FUNC0(payload);

	called_proxy_creds = 1;
	return FUNC1(out, _remote_proxy_user, _remote_proxy_pass);
}