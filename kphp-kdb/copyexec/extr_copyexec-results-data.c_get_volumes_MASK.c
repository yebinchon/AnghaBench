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
typedef  int /*<<< orphan*/  v ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {unsigned long long volume_id; } ;

/* Variables and functions */
 TYPE_1__** HOSTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long* FUNC1 (int,int) ; 
 int /*<<< orphan*/  cmp_unsigned_long_long ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 int hosts ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,unsigned long long) ; 
 char* FUNC7 (char*) ; 

char *FUNC8 (void) {
  char buf[32];
  if (hosts <= 0) {
    return FUNC7 ("");
  }
  int i, m = 0, l = 0;
  unsigned long long *v = FUNC1 (hosts, sizeof (v[0]));
  for (i = 0; i < hosts; i++) {
    v[i] = HOSTS[i+1]->volume_id;
  }
  FUNC4 (v, hosts, sizeof (v[0]), cmp_unsigned_long_long);
  for (i = 1; i < hosts; i++) {
    if (v[i] != v[m]) {
      v[++m] = v[i];
    }
  }
  m++;
  for (i = 0; i < m; i++) {
    int o = FUNC5 (buf, sizeof (buf), "%llu", v[i]);
    FUNC0 (o < sizeof (buf));
    l += o + 1;
  }
  char *z = FUNC3 (l), *p = z;
  for (i = 0; i < m; i++) {
    if (i > 0) {
      *p++ = ',';
    }
    p += FUNC6 (p, "%llu", v[i]);
  }
  FUNC2 (v);
  FUNC0 (p == (z + (l - 1)));
  return z;
}