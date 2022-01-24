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
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  X509_LOOKUP ;

/* Variables and functions */
 int /*<<< orphan*/  X509_FILETYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

X509_STORE *FUNC7(void)
{
    X509_STORE *store;
    X509_LOOKUP *lookup;

    if ((store = FUNC6()) == NULL)
        goto Error;
    if ((lookup = FUNC4(store, FUNC1())) == NULL)
        goto Error;
    FUNC3(lookup, NULL, X509_FILETYPE_DEFAULT);
    if ((lookup = FUNC4(store, FUNC2())) == NULL)
        goto Error;
    FUNC0(lookup, NULL, X509_FILETYPE_DEFAULT);

    return store;
Error:
    if (store != NULL)
        FUNC5(store);
    return NULL;
}