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
 scalar_t__ COMM_MODE ; 
 scalar_t__ NOTIFY_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2 (int type, int owner, int place) {
  FUNC0 (COMM_MODE || NOTIFY_MODE);
  if (COMM_MODE) {
    return (FUNC1 (place) || FUNC1 (owner)) && (type >= 20) && (type <= 24);
  } else {
    return (type >= 0) && (type <= 31);
  }
}