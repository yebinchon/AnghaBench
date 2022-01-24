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
struct raw_message {scalar_t__ total_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct raw_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ out_buf_bytes ; 
 scalar_t__ out_buf_first_int ; 
 int out_buf_init ; 
 struct raw_message out_buf_msg ; 
 int out_buf_packets ; 
 scalar_t__ out_buf_size ; 
 int out_buf_start ; 
 int /*<<< orphan*/  FUNC2 (struct raw_message*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*,struct raw_message*) ; 

void FUNC4 (struct raw_message *raw, int num) {
  out_buf_bytes += raw->total_bytes;
  if (!out_buf_init) {
    out_buf_msg = *raw;
    //rwm_clone (&out_buf_msg, raw);
    out_buf_first_int = raw->total_bytes;
    out_buf_packets = 1; 
    out_buf_size = raw->total_bytes;
    out_buf_start = num;
    out_buf_init = 1;
    FUNC1 (raw, 0, sizeof (*raw));
  } else {
//    struct raw_message t;
//    rwm_clone (&t, raw);
    int x = raw->total_bytes;
    FUNC2 (&out_buf_msg, &x, 4);
    FUNC3 (&out_buf_msg, raw);

    out_buf_packets ++;
    out_buf_size += x + 4;
    FUNC0 ((out_buf_size) == out_buf_msg.total_bytes);
  }
}