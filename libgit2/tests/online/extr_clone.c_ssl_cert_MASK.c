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
typedef  void git_cert ;

/* Variables and functions */
 int GIT_ECERTIFICATE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * _remote_sslnoverify ; 

__attribute__((used)) static int FUNC1(git_cert *cert, int valid, const char *host, void *payload)
{
	FUNC0(cert);
	FUNC0(host);
	FUNC0(payload);

	if (_remote_sslnoverify != NULL)
		valid = 1;

	return valid ? 0 : GIT_ECERTIFICATE;
}