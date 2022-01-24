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
struct st_neverbleed_thread_data_t {int dummy; } ;
struct st_neverbleed_rsa_exdata_t {int /*<<< orphan*/  nb; } ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 struct st_neverbleed_rsa_exdata_t* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 struct st_neverbleed_thread_data_t* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const RSA *rsa, struct st_neverbleed_rsa_exdata_t **exdata,
                             struct st_neverbleed_thread_data_t **thdata)
{
    *exdata = FUNC0(rsa, 0);
    if (*exdata == NULL) {
        errno = 0;
        FUNC1("invalid internal ref");
    }
    *thdata = FUNC2((*exdata)->nb);
}