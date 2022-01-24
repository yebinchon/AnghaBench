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
struct TYPE_3__ {int /*<<< orphan*/  bind_port; int /*<<< orphan*/  bind_host; } ;
typedef  TYPE_1__ server_config ;

/* Variables and functions */
 int FUNC0 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(server_config *cf, int argc, char **argv) {
  int opt;

  while (-1 != (opt = FUNC0(argc, argv, "b:hp:"))) {
    switch (opt) {
      case 'b':
        cf->bind_host = optarg;
        break;

      case 'p':
        if (1 != FUNC2(optarg, "%hu", &cf->bind_port)) {
          FUNC1("bad port number: %s", optarg);
          FUNC3();
        }
        break;

      default:
        FUNC3();
    }
  }
}