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
typedef  int /*<<< orphan*/  JSON_Value ;
typedef  int /*<<< orphan*/  JSON_Object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 

JSON_Value * FUNC4(const JSON_Object *object, const char *name) {
    const char *dot_position = FUNC3(name, '.');
    if (!dot_position) {
        return FUNC0(object, name);
    }
    object = FUNC2(FUNC1(object, name, dot_position - name));
    return FUNC4(object, dot_position + 1);
}