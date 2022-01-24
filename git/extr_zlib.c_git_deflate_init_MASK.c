#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* msg; } ;
struct TYPE_7__ {TYPE_6__ z; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int Z_OK ; 
 int FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(git_zstream *strm, int level)
{
	int status;

	FUNC2(strm, 0, sizeof(*strm));
	FUNC5(strm);
	status = FUNC0(&strm->z, level);
	FUNC4(strm);
	if (status == Z_OK)
		return;
	FUNC1("deflateInit: %s (%s)", FUNC3(status),
	    strm->z.msg ? strm->z.msg : "no message");
}