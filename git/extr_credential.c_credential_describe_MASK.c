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
struct strbuf {int dummy; } ;
struct credential {scalar_t__* path; scalar_t__ host; scalar_t__* username; scalar_t__* protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct credential *c, struct strbuf *out)
{
	if (!c->protocol)
		return;
	FUNC0(out, "%s://", c->protocol);
	if (c->username && *c->username)
		FUNC0(out, "%s@", c->username);
	if (c->host)
		FUNC1(out, c->host);
	if (c->path)
		FUNC0(out, "/%s", c->path);
}