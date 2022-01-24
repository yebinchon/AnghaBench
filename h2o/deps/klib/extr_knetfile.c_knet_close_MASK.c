#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int ctrl_fd; int fd; scalar_t__ type; struct TYPE_4__* http_host; struct TYPE_4__* path; struct TYPE_4__* retr; struct TYPE_4__* response; struct TYPE_4__* port; struct TYPE_4__* host; } ;
typedef  TYPE_1__ knetFile ;

/* Variables and functions */
 scalar_t__ KNF_TYPE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(knetFile *fp)
{
	if (fp == 0) return 0;
	if (fp->ctrl_fd != -1) FUNC2(fp->ctrl_fd); // FTP specific
	if (fp->fd != -1) {
		/* On Linux/Mac, netclose() is an alias of close(), but on
		 * Windows, it is an alias of closesocket(). */
		if (fp->type == KNF_TYPE_LOCAL) FUNC0(fp->fd);
		else FUNC2(fp->fd);
	}
	FUNC1(fp->host); FUNC1(fp->port);
	FUNC1(fp->response); FUNC1(fp->retr); // FTP specific
	FUNC1(fp->path); FUNC1(fp->http_host); // HTTP specific
	FUNC1(fp);
	return 0;
}