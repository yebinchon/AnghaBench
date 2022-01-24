#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  found_entry; } ;
typedef  TYPE_1__ MMDB_lookup_result_s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MMDB_SUCCESS ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ,char const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mmdb ; 

__attribute__((used)) static int
FUNC3 (MMDB_lookup_result_s * res, const char *ip)
{
  int gai_err, mmdb_err;

  *res = FUNC1 (mmdb, ip, &gai_err, &mmdb_err);
  if (0 != gai_err)
    return 1;

  if (MMDB_SUCCESS != mmdb_err)
    FUNC0 ("Error from libmaxminddb: %s\n", FUNC2 (mmdb_err));

  if (!(*res).found_entry)
    return 1;

  return 0;
}