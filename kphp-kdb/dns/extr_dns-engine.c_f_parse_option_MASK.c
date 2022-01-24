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

/* Variables and functions */
 int DNS_MAX_RESPONSE_RECORDS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int dns_max_response_records ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char,int) ; 
 int keep_going ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  output_binlog_name ; 
 void* stats_port ; 
 int /*<<< orphan*/  stderr ; 
 int workers ; 

int FUNC4 (int val) {
  int c;
  switch (val) {
  case 'E':
    output_binlog_name = optarg;
    break;
  case 'M':
    workers = FUNC0 (optarg);
    if (workers < 0) {
      workers = 0;
    }
    if (workers > 16) {
      FUNC3 ("Too many additional workers\n");
      FUNC1 (1);
    }
    break;
  case 'P':
    stats_port = FUNC0 (optarg);
    break;
  case 'R':
    c = FUNC0 (optarg);
    if (c >= 1 && c <= DNS_MAX_RESPONSE_RECORDS) {
      dns_max_response_records = c;
    }
    break;
  case 'k':
    keep_going = 1;
    break;
  default:
    FUNC2 (stderr, "Unimplemented option '%c' (%d)\n", (char) val, val);
    return -1;
  }
  return 0;
}