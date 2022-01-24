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
struct raw_message {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct raw_message*,int,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  rwm_process_memcpy ; 
 int /*<<< orphan*/  rwm_process_nop ; 

int FUNC1 (struct raw_message *raw, void *buf, int bytes) {
  if (buf) {
    return FUNC0 (raw, bytes, rwm_process_memcpy, &buf);
  } else {
    return FUNC0 (raw, bytes, rwm_process_nop, 0);
  }
}