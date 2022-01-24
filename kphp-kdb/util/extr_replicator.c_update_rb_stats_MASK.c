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
struct related_binlog {scalar_t__ status; } ;

/* Variables and functions */
 int FUNC0 (struct related_binlog*) ; 
 int /*<<< orphan*/  FUNC1 (struct related_binlog*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC2 (struct related_binlog *R) {
  if (R->status) {
    int st = FUNC0 (R);
    FUNC1 (R, R->status, st);
    FUNC1 (R, R->status + 1, st);
  }
}