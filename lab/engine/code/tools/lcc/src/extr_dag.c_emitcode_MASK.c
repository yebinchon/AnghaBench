#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  (* defaddress ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stabsym ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* emit ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stabline ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* stabblock ) (char,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {TYPE_5__* next; } ;
struct TYPE_10__ {int size; long* values; int /*<<< orphan*/ * labels; int /*<<< orphan*/  deflab; int /*<<< orphan*/  table; } ;
struct TYPE_9__ {int /*<<< orphan*/  src; } ;
struct TYPE_8__ {int /*<<< orphan*/  locals; scalar_t__ level; int /*<<< orphan*/  types; int /*<<< orphan*/  identifiers; } ;
struct TYPE_11__ {TYPE_3__ swtch; int /*<<< orphan*/  var; int /*<<< orphan*/  forest; TYPE_2__ point; TYPE_1__ block; TYPE_5__* begin; } ;
struct TYPE_12__ {int kind; TYPE_4__ u; struct TYPE_12__* next; } ;
typedef  int /*<<< orphan*/  Coordinate ;
typedef  TYPE_5__* Code ;

/* Variables and functions */
#define  Address 136 
#define  Blockbeg 135 
#define  Blockend 134 
 int /*<<< orphan*/  CODE ; 
#define  Defpoint 133 
#define  Gen 132 
 TYPE_7__* IR ; 
#define  Jump 131 
 int /*<<< orphan*/  LIT ; 
 scalar_t__ LOCAL ; 
 long LONG_MAX ; 
#define  Label 130 
#define  Local 129 
#define  Switch 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_6__ codehead ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errcnt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  glevel ; 
 int /*<<< orphan*/  src ; 
 int /*<<< orphan*/  FUNC4 (char,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typestab ; 

void FUNC13(void) {
	Code cp;
	Coordinate save;

	save = src;
	cp = codehead.next;
	for ( ; errcnt <= 0 && cp; cp = cp->next)
		switch (cp->kind) {
		case Address: break;
		case Blockbeg: if (glevel && IR->stabblock) {
			       	(*IR->stabblock)('{',  cp->u.block.level - LOCAL, cp->u.block.locals);
			       	FUNC12(CODE);
			       }
 break;
		case Blockend: if (glevel && IR->stabblock) {
			       	Code bp = cp->u.begin;
			       	FUNC3(bp->u.block.identifiers, bp->u.block.level, typestab, NULL);
			       	FUNC3(bp->u.block.types,       bp->u.block.level, typestab, NULL);
			       	(*IR->stabblock)('}', bp->u.block.level - LOCAL, bp->u.block.locals);
			       	FUNC12(CODE);
			       }
 break;
		case Defpoint: src = cp->u.point.src;
			       if (glevel > 0 && IR->stabline) {
			       	(*IR->stabline)(&cp->u.point.src); FUNC12(CODE); } break;
		case Gen: case Jump:
		case Label:    if (cp->u.forest)
			       	(*IR->emit)(cp->u.forest); break;
		case Local:    if (glevel && IR->stabsym) {
			       	(*IR->stabsym)(cp->u.var);
			       	FUNC12(CODE);
			       } break;
		case Switch:   {	int i;
			       	FUNC1(cp->u.swtch.table, LIT);
			       	(*IR->defaddress)(FUNC2(cp->u.swtch.labels[0]));
			       	for (i = 1; i < cp->u.swtch.size; i++) {
			       		long k = cp->u.swtch.values[i-1];
			       		while (++k < cp->u.swtch.values[i])
			       			FUNC0(k < LONG_MAX),
			       			(*IR->defaddress)(FUNC2(cp->u.swtch.deflab));
			       		(*IR->defaddress)(FUNC2(cp->u.swtch.labels[i]));
			       	}
			       	FUNC12(CODE);
			       } break;
		default: FUNC0(0);
		}
	src = save;
}