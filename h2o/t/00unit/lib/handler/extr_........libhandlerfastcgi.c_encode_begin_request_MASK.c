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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct st_fcgi_begin_request_body_t {int /*<<< orphan*/  reserved; int /*<<< orphan*/  flags; int /*<<< orphan*/  role; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCGI_BEGIN_REQUEST ; 
 int /*<<< orphan*/  FCGI_BEGIN_REQUEST_BODY_SIZE ; 
 int FCGI_RECORD_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *p, uint16_t reqId, uint16_t role, uint8_t flags)
{
    FUNC0(p, FCGI_BEGIN_REQUEST, reqId, FCGI_BEGIN_REQUEST_BODY_SIZE);
    struct st_fcgi_begin_request_body_t *body = (void *)((char *)p + FCGI_RECORD_HEADER_SIZE);
    FUNC1(&body->role, role);
    body->flags = flags;
    FUNC2(body->reserved, 0, sizeof(body->reserved));
}