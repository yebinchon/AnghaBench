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
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long long,long long) ; 
 int FUNC2 (char*,int,char*,long long,...) ; 

__attribute__((used)) static char *FUNC3 (long long size) {
  int i;
  static char buff[32];
  static const struct {
    int shift;
    char *suffix;
  } a[5] = {
    {.shift = 40, .suffix = "T"},
    {.shift = 30, .suffix = "G"},
    {.shift = 20, .suffix = "M"},
    {.shift = 10, .suffix = "K"},
    {.shift = 0, .suffix = ""},
  };
  buff[0] = 0;
  for (i = 0; i < 5; i++) {
    if (size >= 1LL << a[i].shift) {
      FUNC0 (FUNC2 (buff, sizeof (buff), "%.3lf%s", FUNC1 (size, 1LL << a[i].shift), a[i].suffix) < sizeof (buff));
      break;
    }
  }
  if (!buff[0]) {
    FUNC0 (FUNC2 (buff, sizeof (buff), "%lld", size) < sizeof (buff));
  }
  return buff;
}