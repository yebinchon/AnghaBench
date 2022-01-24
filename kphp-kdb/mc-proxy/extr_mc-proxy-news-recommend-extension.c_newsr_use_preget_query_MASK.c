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
struct newsr_gather_extra {int request_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 

int FUNC1 (void *extra) {
  FUNC0 (4, "newsr: request_tag = %d\n", ((struct newsr_gather_extra *)extra)->request_tag);
  return ((struct newsr_gather_extra *)extra)->request_tag;
}