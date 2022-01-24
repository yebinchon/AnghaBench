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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

inline char FUNC1 (char c) {
  if ('A' <= c && c <= 'Z') {
    return c - 'A';
  }
  if ('a' <= c && c <= 'z') {
    return c - 'a' + 26;
  }
  if ('0' <= c && c <= '9') {
    return c - '0' + 26 + 26;
  }
  FUNC0 (0);
}