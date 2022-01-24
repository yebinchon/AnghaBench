#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vecs ;
struct iovec {char* member_0; int member_1; } ;
struct TYPE_4__ {char* base; int len; } ;
typedef  TYPE_1__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IOV_MAX ; 
 int /*<<< orphan*/  FUNC1 (int,struct iovec*,int) ; 

void FUNC2(h2o_iovec_t prefix, h2o_iovec_t msg)
{
    /* use writev(2) to emit error atomically */
    struct iovec vecs[] = {{prefix.base, prefix.len}, {msg.base, msg.len}, {"\n", 1}};
    FUNC0(sizeof(vecs) / sizeof(vecs[0]) <= IOV_MAX);
    FUNC1(2, vecs, sizeof(vecs) / sizeof(vecs[0]));
}