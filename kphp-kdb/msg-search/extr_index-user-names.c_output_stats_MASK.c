#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  Dc ; 
 int /*<<< orphan*/  MAX_PAIRS ; 
 int /*<<< orphan*/  MAX_USERS ; 
 int Pc ; 
 TYPE_1__ U ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC1 (void) {
  FUNC0 (stderr, "%d hashes read (max %d), %d hashes written, describing users up to %d (max %d)\n", 
	   Pc, MAX_PAIRS, Dc, U.users, MAX_USERS);
}