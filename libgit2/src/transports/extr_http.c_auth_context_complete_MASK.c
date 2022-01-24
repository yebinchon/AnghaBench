#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* auth_context; } ;
typedef  TYPE_1__ http_server ;
struct TYPE_5__ {scalar_t__ (* is_complete ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static bool FUNC1(http_server *server)
{
	/* If there's no is_complete function, we're always complete */
	if (!server->auth_context->is_complete)
		return true;

	if (server->auth_context->is_complete(server->auth_context))
		return true;

	return false;
}