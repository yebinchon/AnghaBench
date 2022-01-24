#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imap_store {struct imap* imap; } ;
struct TYPE_4__ {int* fd; } ;
struct TYPE_3__ {TYPE_2__ sock; } ;
struct imap {TYPE_1__ buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imap*) ; 
 int /*<<< orphan*/  FUNC1 (struct imap_store*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct imap_store *ictx)
{
	struct imap *imap = ictx->imap;

	if (imap->buf.sock.fd[0] != -1) {
		FUNC1(ictx, NULL, "LOGOUT");
		FUNC2(&imap->buf.sock);
	}
	FUNC0(imap);
}