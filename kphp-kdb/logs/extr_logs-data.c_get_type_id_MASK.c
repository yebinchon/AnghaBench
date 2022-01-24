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
struct TYPE_2__ {int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int MAX_TYPE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_type_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int*,int*) ; 
 int FUNC4 (char*) ; 
 TYPE_1__* types ; 

int FUNC5 (char *s) {
  int type_id;
  int sn = FUNC4 (s);
  if (s[0] >= '1' && s[0] <= '9') {
    int len;
    FUNC3 (s, "%d%n", &type_id, &len);
    if (len != sn) {
      return 0;
    }

    if (!(1 <= type_id && type_id < MAX_TYPE)) {
      return 0;
    }

    if (types[type_id].name == NULL) {
      return 0;
    }
  } else {
    if (!FUNC1 (s)) {
      return 0;
    }

    int *ptmp = FUNC2 (&map_type_id, FUNC0 (s));
    if (ptmp == NULL) {
      return 0;
    }

    type_id = *ptmp;
  }
  return type_id;
}