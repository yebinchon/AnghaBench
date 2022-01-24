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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

jv FUNC3(const char* str, int len) {
  return
    FUNC2(str, str+len) ?
    FUNC1(str, len) :
    FUNC0(str, len);
}