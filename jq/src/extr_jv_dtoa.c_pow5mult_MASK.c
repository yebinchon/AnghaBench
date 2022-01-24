#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dtoa_context {TYPE_1__* p5s; } ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef  TYPE_1__ Bigint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dtoa_context*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct dtoa_context*,int) ; 
 void* FUNC2 (struct dtoa_context*,TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (struct dtoa_context*,TYPE_1__*,int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Bigint *
FUNC4
 (struct dtoa_context* C, Bigint *b, int k)
{
	Bigint *b1, *p5, *p51;
	int i;
	static const int p05[3] = { 5, 25, 125 };

	if ((i = k & 3))
		b = FUNC3(C, b, p05[i-1], 0);

	if (!(k >>= 2))
		return b;
	if (!(p5 = C->p5s)) {
		/* first time */
		p5 = C->p5s = FUNC1(C, 625);
		p5->next = 0;
		}
	for(;;) {
		if (k & 1) {
			b1 = FUNC2(C, b, p5);
			FUNC0(C, b);
			b = b1;
			}
		if (!(k >>= 1))
			break;
		if (!(p51 = p5->next)) {
			p51 = p5->next = FUNC2(C, p5,p5);
			p51->next = 0;
			}
		p5 = p51;
		}
	return b;
	}