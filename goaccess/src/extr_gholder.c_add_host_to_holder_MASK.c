#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int s_addr; int* s6_addr; } ;
struct in6_addr {int s_addr; int* s6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  anonymize_ip; } ;
struct TYPE_6__ {int /*<<< orphan*/  module; } ;
typedef  int /*<<< orphan*/  GRawDataType ;
typedef  int /*<<< orphan*/  GRawDataItem ;
typedef  int /*<<< orphan*/  GPanel ;
typedef  TYPE_1__ GHolder ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int INET_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_3__ conf ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct in_addr*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 

__attribute__((used)) static void
FUNC7 (GRawDataItem item, GHolder * h, GRawDataType type,
                    const GPanel * panel)
{
  char buf4[INET_ADDRSTRLEN];
  char buf6[INET6_ADDRSTRLEN];
  char *data = NULL;
  int hits = 0;
  unsigned i;

  struct in6_addr addr6, mask6, nwork6;
  struct in_addr addr4, mask4, nwork4;

  const char *m4 = "255.255.255.0";
  const char *m6 = "ffff:ffff:ffff:ffff:0000:0000:0000:0000";

  if (FUNC5 (h->module, item, type, &data, &hits) == 1)
    return;

  if (!conf.anonymize_ip) {
    FUNC0 (item, h, type, panel);
    FUNC1 (data);
    return;
  }

  if (1 == FUNC3 (AF_INET, data, &addr4)) {
    if (1 == FUNC3 (AF_INET, m4, &mask4)) {
      FUNC4 (buf4, 0, sizeof *buf4);
      nwork4.s_addr = addr4.s_addr & mask4.s_addr;

      if (FUNC2 (AF_INET, &nwork4, buf4, INET_ADDRSTRLEN) != NULL) {
        FUNC6 (item, h, panel, buf4, hits);
        FUNC1 (data);
      }
    }
  } else if (1 == FUNC3 (AF_INET6, data, &addr6)) {
    if (1 == FUNC3 (AF_INET6, m6, &mask6)) {
      FUNC4 (buf6, 0, sizeof *buf6);
      for (i = 0; i < 16; i++) {
        nwork6.s6_addr[i] = addr6.s6_addr[i] & mask6.s6_addr[i];
      }

      if (FUNC2 (AF_INET6, &nwork6, buf6, INET6_ADDRSTRLEN) != NULL) {
        FUNC6 (item, h, panel, buf6, hits);
        FUNC1 (data);
      }
    }
  }
}