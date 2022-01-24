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
struct outputs_json_params {int /*<<< orphan*/  cur_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,unsigned char const*) ; 

__attribute__((used)) static int FUNC2(void *params_, const unsigned char *keyVal, size_t keyLen) {
    struct outputs_json_params *params = (struct outputs_json_params *)params_;
    FUNC0(params->cur_key);
    FUNC1(&(params->cur_key), "%.*s", keyLen, keyVal);
    return 1;
}