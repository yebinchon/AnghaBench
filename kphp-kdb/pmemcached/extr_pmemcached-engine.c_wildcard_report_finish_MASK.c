#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ metafile_mode ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int,int) ; 
 int /*<<< orphan*/  wildcard_arrays_allocated ; 
 TYPE_1__* wildcard_connection ; 
 int wildcard_ptr ; 
 int wildcard_total_data_sent ; 
 int wildcard_total_keys_sent ; 
 char wildcard_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC6 (const char *key, int key_len) {
  if (wildcard_type == '#') {
    if (metafile_mode) {
      FUNC1 (wildcard_ptr + wildcard_total_data_sent, "}", 1);
      wildcard_total_data_sent ++;
    } else {
      wildcard_total_data_sent ++;
      FUNC5 (&wildcard_connection->Out, "}\r\n", 3);
    }
    if (metafile_mode) {
      static char s[12];
      FUNC3 (s, "%09d", wildcard_total_keys_sent);
      FUNC1 (wildcard_ptr + 2, s, 9);
      FUNC2 (wildcard_connection, key, key_len, wildcard_ptr, wildcard_total_data_sent, 1);
      FUNC4 (key, key_len - 1, wildcard_ptr, wildcard_total_data_sent);
      FUNC0 (wildcard_ptr);
      wildcard_arrays_allocated --;
    } else {
      static char s[12];
      FUNC3 (s, "%09d", wildcard_total_data_sent);
      FUNC1 (wildcard_ptr, s, 9);
      FUNC3 (s, "%09d", wildcard_total_keys_sent);
      FUNC1 (wildcard_ptr + 13, s, 9);
    }
  }
}