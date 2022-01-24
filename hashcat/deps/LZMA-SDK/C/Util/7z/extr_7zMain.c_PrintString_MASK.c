#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt16 ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ CBuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  CP_OEMCP ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_Alloc ; 

__attribute__((used)) static SRes FUNC4(const UInt16 *s)
{
  CBuf buf;
  SRes res;
  FUNC1(&buf);
  res = FUNC3(&buf, s
      #ifndef _USE_UTF8
      , CP_OEMCP
      #endif
      );
  if (res == SZ_OK)
    FUNC2((const char *)buf.data);
  FUNC0(&buf, &g_Alloc);
  return res;
}