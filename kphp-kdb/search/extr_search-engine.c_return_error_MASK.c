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
struct value_buffer {int /*<<< orphan*/  (* output_int ) (struct value_buffer*,int /*<<< orphan*/ ) ;} ;
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Q_raw ; 
 scalar_t__ return_empty_record_on_error ; 
 int FUNC0 (struct connection*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  FUNC2 (struct value_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct value_buffer*,struct connection*,char const*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct value_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*) ; 

__attribute__((used)) static int FUNC6 (struct connection *c, const char *key, int len, int dog_len, char *q_end) {
  FUNC5 (1, "ERROR near '%.256s'\n", q_end);
  if (return_empty_record_on_error) {
    struct value_buffer b;
    if (!FUNC3 (&b, c, key - dog_len, len + dog_len, Q_raw, 64)) {
      return 0;
    }
    b.output_int (&b, 0);
    return FUNC4 (&b);
  } else {
    return FUNC0 (c, key - dog_len, stats_buff, FUNC1 (stats_buff, "ERROR near '%.256s'\n", q_end));
  }
}