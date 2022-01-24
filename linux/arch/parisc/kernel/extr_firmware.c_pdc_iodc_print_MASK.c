#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* layers; } ;
struct TYPE_5__ {TYPE_1__ dp; int /*<<< orphan*/  spa; scalar_t__ hpa; int /*<<< orphan*/  iodc_io; } ;
struct TYPE_6__ {TYPE_2__ mem_cons; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENTRY_IO_COUT ; 
 TYPE_3__* PAGE0 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* iodc_dbuf ; 
 char* iodc_retbuf ; 
 int /*<<< orphan*/  pdc_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(const unsigned char *str, unsigned count)
{
	unsigned int i;
	unsigned long flags;

	for (i = 0; i < count;) {
		switch(str[i]) {
		case '\n':
			iodc_dbuf[i+0] = '\r';
			iodc_dbuf[i+1] = '\n';
			i += 2;
			goto print;
		default:
			iodc_dbuf[i] = str[i];
			i++;
			break;
		}
	}

print:
        FUNC2(&pdc_lock, flags);
        FUNC1(PAGE0->mem_cons.iodc_io,
                    (unsigned long)PAGE0->mem_cons.hpa, ENTRY_IO_COUT,
                    PAGE0->mem_cons.spa, FUNC0(PAGE0->mem_cons.dp.layers),
                    FUNC0(iodc_retbuf), 0, FUNC0(iodc_dbuf), i, 0);
        FUNC3(&pdc_lock, flags);

	return i;
}