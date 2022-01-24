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
struct queued {int /*<<< orphan*/  data; int /*<<< orphan*/  (* f ) (int /*<<< orphan*/ ) ;} ;
typedef  scalar_t__ gpointer ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct queued*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean FUNC2(gpointer data)
{
	struct queued *q = (struct queued *) data;

	(*(q->f))(q->data);
	FUNC0(q);
	return FALSE;
}