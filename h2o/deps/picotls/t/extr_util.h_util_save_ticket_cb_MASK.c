#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_util_save_ticket_t {char* fn; } ;
typedef  int /*<<< orphan*/  ptls_t ;
typedef  int /*<<< orphan*/  ptls_save_ticket_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PTLS_ERROR_LIBRARY ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ptls_save_ticket_t *_self, ptls_t *tls, ptls_iovec_t src)
{
    struct st_util_save_ticket_t *self = (void *)_self;
    FILE *fp;

    if ((fp = FUNC1(self->fn, "wb")) == NULL) {
        FUNC2(stderr, "failed to open file:%s:%s\n", self->fn, FUNC4(errno));
        return PTLS_ERROR_LIBRARY;
    }
    FUNC3(src.base, 1, src.len, fp);
    FUNC0(fp);

    return 0;
}