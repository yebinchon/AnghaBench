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
struct err_data {int /*<<< orphan*/  buf; } ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 scalar_t__ JV_KIND_STRING ; 
 int /*<<< orphan*/  JV_PRINT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static void FUNC7(void *data, jv e) {
  struct err_data *err_data = data;
  if (FUNC2(e) != JV_KIND_STRING)
    e = FUNC0(e, JV_PRINT_INVALID);
  if (!FUNC6(FUNC3(e), "jq: error", sizeof("jq: error") - 1))
    FUNC4(err_data->buf, sizeof(err_data->buf), "%s", FUNC3(e));
  if (FUNC5(err_data->buf, '\n'))
    *(FUNC5(err_data->buf, '\n')) = '\0';
  FUNC1(e);
}