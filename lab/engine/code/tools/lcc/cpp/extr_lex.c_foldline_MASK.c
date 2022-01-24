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
struct TYPE_4__ {char* inp; char* inl; } ;
typedef  TYPE_1__ Source ;

/* Variables and functions */
 scalar_t__ EOF ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

int
FUNC2(Source *s)
{
	while (s->inp+1 >= s->inl && FUNC0(s)!=EOF)
		;
	if (s->inp[1] == '\n') {
		FUNC1(s->inp, s->inp+2, s->inl-s->inp+3);
		s->inl -= 2;
		return 1;
	}
	return 0;
}