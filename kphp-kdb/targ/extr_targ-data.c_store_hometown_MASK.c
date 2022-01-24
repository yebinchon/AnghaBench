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
struct TYPE_3__ {scalar_t__ hometown_hashes; scalar_t__ hometown; int /*<<< orphan*/  uid; } ;
typedef  TYPE_1__ user_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  q_hometown ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6 (user_t *U, char *hometown, int len) {
  int i;
  FUNC1 (len <= 255);
  FUNC1 (!hometown[len]);
  for (i = 0; i < len; i++) {
    FUNC1 ((unsigned char) hometown[i] >= ' ');
  }
  FUNC4 (U->hometown);
  FUNC2 (U->uid, U->hometown_hashes);

  if (len) {
    U->hometown = FUNC3 (hometown, len);
    U->hometown_hashes = FUNC5 (U->hometown, 0, q_hometown);
    FUNC0 (U->uid, U->hometown_hashes);
  } else {
    U->hometown = 0;
    U->hometown_hashes = 0;
  }

  return 1;
}