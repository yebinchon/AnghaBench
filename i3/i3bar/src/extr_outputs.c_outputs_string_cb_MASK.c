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
struct outputs_json_params {char* cur_key; TYPE_1__* outputs_walk; } ;
struct TYPE_2__ {long ws; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,size_t,unsigned char const*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 long FUNC3 (char*,char**,int) ; 

__attribute__((used)) static int FUNC4(void *params_, const unsigned char *val, size_t len) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;

    if (!FUNC2(params->cur_key, "current_workspace")) {
        char *copy = NULL;
        FUNC1(&copy, "%.*s", len, val);

        char *end;
        errno = 0;
        long parsed_num = FUNC3(copy, &end, 10);
        if (errno == 0 &&
            (end && *end == '\0'))
            params->outputs_walk->ws = parsed_num;

        FUNC0(copy);
        FUNC0(params->cur_key);
        return 1;
    }

    if (FUNC2(params->cur_key, "name")) {
        return 0;
    }

    FUNC1(&(params->outputs_walk->name), "%.*s", len, val);

    FUNC0(params->cur_key);
    return 1;
}