#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* g; } ;
struct TYPE_3__ {long long clicks; long long views; } ;

/* Variables and functions */
 TYPE_2__ AdStats ; 
 long MAX_AD_VIEWS ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,long long,long long) ; 

int FUNC6 (char *stats_filename) {
  if (verbosity > 0) {
    FUNC2 (stderr, "loading global click/view statistics from %s\n", stats_filename);
  }
  int fd = FUNC3 (stats_filename, O_RDONLY);
  if (fd < 0) {
    FUNC2 (stderr, "cannot open statistics file %s: %m\n", stats_filename);
    return -1;
  }
  int r = FUNC4 (fd, AdStats.g, sizeof (AdStats.g));
  FUNC0 (r == sizeof (AdStats.g));
  long i;
  long long c = AdStats.g[0].clicks, v = AdStats.g[0].views;
  FUNC0 (c >= 0 && v >= 0);
  for (i = 1; i < MAX_AD_VIEWS; i++) {
    FUNC0 (AdStats.g[i].clicks >= 0 && AdStats.g[i].views >= 0);
    FUNC0 (AdStats.g[i].clicks <= c && AdStats.g[i].views <= v);
    c -= AdStats.g[i].clicks;
    v -= AdStats.g[i].views;
  }
  FUNC0 (!c && !v);
  FUNC1 (fd);
  FUNC5 (1, "loaded global click/view statistics from file %s, %lld/%lld clicks/views\n", stats_filename, AdStats.g[0].clicks, AdStats.g[0].views);
  return 1;
}