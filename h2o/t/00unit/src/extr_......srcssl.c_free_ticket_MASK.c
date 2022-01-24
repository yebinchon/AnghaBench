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
struct st_session_ticket_t {int /*<<< orphan*/  keybuf; int /*<<< orphan*/  hmac; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct st_session_ticket_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct st_session_ticket_t *ticket)
{
    int key_len = FUNC0(ticket->cipher), block_size = FUNC1(ticket->hmac);
    FUNC3(ticket->keybuf, 0, key_len + block_size);
    FUNC2(ticket);
}