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
struct connection {int /*<<< orphan*/  flags; int /*<<< orphan*/  Out; } ;
typedef  int /*<<< orphan*/  nbw_iterator_t ;

/* Variables and functions */
 int /*<<< orphan*/  C_WANTWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int) ; 
 scalar_t__ FUNC3 (struct connection*,unsigned long long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,...) ; 

int FUNC5 (struct connection *c, unsigned long long affected_rows,
                    unsigned long long insert_id, int server_status, 
                    int warning_count, const char *message, int msg_len,
                    int sequence_number) {
  nbw_iterator_t it;

  int res = 0;

  FUNC0 (&it, &c->Out);
  sequence_number <<= 24;
  FUNC4 (&c->Out, &sequence_number, 4);

  res += FUNC4 (&c->Out, "", 1);
  res += FUNC3 (c, affected_rows);
  res += FUNC3 (c, insert_id);
  res += FUNC4 (&c->Out, &server_status, 2);
  res += FUNC4 (&c->Out, &warning_count, 2);
  res += FUNC4 (&c->Out, message, msg_len);
  
  FUNC1 (&it, &res, 3);

  FUNC2 (c, res);
  c->flags |= C_WANTWR;
  
  return res + 4;
}