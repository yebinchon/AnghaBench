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
typedef  scalar_t__ time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  jv ;
typedef  int /*<<< orphan*/  jq_state ;

/* Variables and functions */
 scalar_t__ JV_KIND_ARRAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct tm*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static jv FUNC9(jq_state *jq, jv a) {
  if (FUNC3(a) != JV_KIND_ARRAY)
    return FUNC8(a, FUNC6("mktime requires array inputs"));
  if (FUNC1(FUNC2(a)) < 6)
    return FUNC8(a, FUNC6("mktime requires parsed datetime inputs"));
  struct tm tm;
  if (!FUNC0(a, &tm))
    return FUNC4(FUNC6("mktime requires parsed datetime inputs"));
  time_t t = FUNC7(&tm);
  if (t == (time_t)-1)
    return FUNC4(FUNC6("invalid gmtime representation"));
  if (t == (time_t)-2)
    return FUNC4(FUNC6("mktime not supported on this platform"));
  return FUNC5(t);
}