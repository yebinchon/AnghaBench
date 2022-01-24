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
struct evhttp_connection {int dummy; } ;
typedef  int ev_uint16_t ;
typedef  enum evhttp_cmd_type { ____Placeholder_evhttp_cmd_type } evhttp_cmd_type ;

/* Variables and functions */
 int EVHTTP_METHOD_HAS_BODY ; 
 int /*<<< orphan*/  FUNC0 (struct evhttp_connection*,int,int*) ; 

__attribute__((used)) static int
FUNC1(struct evhttp_connection *evcon, enum evhttp_cmd_type type)
{
	ev_uint16_t flags;
	FUNC0(evcon, type, &flags);
	return (flags & EVHTTP_METHOD_HAS_BODY) ? 1 : 0;
}