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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct port {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (struct port*,struct scatterlist*,int,int,void*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 struct port* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,void*,int) ; 
 scalar_t__ FUNC6 (int (*) (int /*<<< orphan*/ ,char const*,int)) ; 

__attribute__((used)) static int FUNC7(u32 vtermno, const char *buf, int count)
{
	struct port *port;
	struct scatterlist sg[1];
	void *data;
	int ret;

	if (FUNC6(early_put_chars))
		return FUNC1(vtermno, buf, count);

	port = FUNC2(vtermno);
	if (!port)
		return -EPIPE;

	data = FUNC4(buf, count, GFP_ATOMIC);
	if (!data)
		return -ENOMEM;

	FUNC5(sg, data, count);
	ret = FUNC0(port, sg, 1, count, data, false);
	FUNC3(data);
	return ret;
}