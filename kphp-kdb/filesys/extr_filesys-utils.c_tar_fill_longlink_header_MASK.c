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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4 (char b[512], int link_length, char ext) {
  FUNC0 (b, 0, 512);
  FUNC2 (b, "././@LongLink");
  FUNC1 (b + 100, "%07o", 0);
  FUNC1 (b + 108, "%07o", 0);
  FUNC1 (b + 116, "%07o", 0);
  FUNC1 (b + 124, "%011o", link_length + 1);
  FUNC1 (b + 136, "%011llo", (unsigned long long) 0);
  FUNC3 (b);
  b[156] = ext;
  return 0;
}