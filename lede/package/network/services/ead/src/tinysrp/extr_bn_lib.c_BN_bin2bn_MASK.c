#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int top; long* d; } ;
typedef  long BN_ULONG ;
typedef  TYPE_1__ BIGNUM ;

/* Variables and functions */
 unsigned int BN_BYTES ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

BIGNUM *FUNC3(const unsigned char *s, int len, BIGNUM *ret)
	{
	unsigned int i,m;
	unsigned int n;
	BN_ULONG l;

	if (ret == NULL) ret=FUNC0();
	if (ret == NULL) return(NULL);
	l=0;
	n=len;
	if (n == 0)
		{
		ret->top=0;
		return(ret);
		}
	if (FUNC1(ret,(int)(n+2)*8) == NULL)
		return(NULL);
	i=((n-1)/BN_BYTES)+1;
	m=((n-1)%(BN_BYTES));
	ret->top=i;
	while (n-- > 0)
		{
		l=(l<<8L)| *(s++);
		if (m-- == 0)
			{
			ret->d[--i]=l;
			l=0;
			m=BN_BYTES-1;
			}
		}
	/* need to call this due to clear byte at top if avoiding
	 * having the top bit set (-ve number) */
	FUNC2(ret);
	return(ret);
	}