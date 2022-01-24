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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC1 (char const*) ; 

qboolean FUNC2(const char *in, const char *ext)
{
	int inlen, extlen;
	
	inlen = FUNC1(in);
	extlen = FUNC1(ext);
	
	if(extlen <= inlen)
	{
		in += inlen - extlen;
		
		if(!FUNC0(in, ext))
			return qtrue;
	}
	
	return qfalse;
}