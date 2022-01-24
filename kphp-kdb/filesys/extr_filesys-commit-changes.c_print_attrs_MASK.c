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
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC2 (int attrib_mask) {
  if (attrib_mask >= 0) {
    char ch = '[';
    if (attrib_mask & 1) { FUNC1 ("mode", &ch); }
    if (attrib_mask & 2) { FUNC1 ("uid", &ch); }
    if (attrib_mask & 4) { FUNC1 ("gid", &ch); }
    if (attrib_mask & 8) { FUNC1 ("size", &ch); }
    if (attrib_mask & 16) { FUNC1 ("mtime", &ch); }
    if (ch == '[') {
      FUNC0 (ch, stdout);
    }
    FUNC0 (']', stdout);
  }
  FUNC0 ('\n', stdout);
}