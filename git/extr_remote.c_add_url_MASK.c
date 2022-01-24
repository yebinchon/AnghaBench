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
struct remote {char const** url; scalar_t__ url_nr; int /*<<< orphan*/  url_alloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct remote *remote, const char *url)
{
	FUNC0(remote->url, remote->url_nr + 1, remote->url_alloc);
	remote->url[remote->url_nr++] = url;
}