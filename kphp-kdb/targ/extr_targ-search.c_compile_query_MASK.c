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
 scalar_t__ Q_aux_num ; 
 scalar_t__ Q_limit ; 
 scalar_t__ Q_order ; 
 scalar_t__ Qfree ; 
 scalar_t__ Qq ; 
 char* Qs ; 
 char* Qs0 ; 
 scalar_t__ Qw ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 

char *FUNC2 (char *str) {
  Qw = 0;
  Qfree = 0;
  Qs = Qs0 = str;
  FUNC1 (3, "parsing query `%s'\n", str);
  Qq = FUNC0 (128);
  Q_order = 0;
  Q_limit = 0;
  Q_aux_num = 0;
  return Qq ? 0 : Qs;
}