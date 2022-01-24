#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_7__* name; } ;
struct TYPE_13__ {TYPE_7__* string; } ;
struct TYPE_12__ {TYPE_7__* data; TYPE_7__* server; TYPE_7__* name; } ;
struct TYPE_11__ {TYPE_7__* suffix; TYPE_7__* prefix; } ;
struct TYPE_10__ {TYPE_7__* name; } ;
struct TYPE_15__ {TYPE_5__ cycle; TYPE_4__ xref; TYPE_3__ anim; TYPE_2__ seq; TYPE_1__ still; } ;
struct TYPE_16__ {int type; TYPE_6__ source; scalar_t__ pfilter; scalar_t__ ifilter; } ;
typedef  TYPE_7__ lwClip ;
typedef  int /*<<< orphan*/  ListFreeFunc ;

/* Variables and functions */
#define  ID_ANIM 132 
#define  ID_ISEQ 131 
#define  ID_STCC 130 
#define  ID_STIL 129 
#define  ID_XREF 128 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 scalar_t__ lwFreePlugin ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 

void FUNC2( lwClip *clip ){
	if ( clip ) {
		FUNC1( (void*) clip->ifilter, (ListFreeFunc) lwFreePlugin );
		FUNC1( (void*) clip->pfilter, (ListFreeFunc) lwFreePlugin );

		switch ( clip->type ) {
		case ID_STIL:
			FUNC0( clip->source.still.name );
			break;

		case ID_ISEQ:
			FUNC0( clip->source.seq.prefix );
			FUNC0( clip->source.seq.suffix );
			break;

		case ID_ANIM:
			FUNC0( clip->source.anim.name );
			FUNC0( clip->source.anim.server );
			FUNC0( clip->source.anim.data );
			break;

		case ID_XREF:
			FUNC0( clip->source.xref.string );
			break;

		case ID_STCC:
			FUNC0( clip->source.cycle.name );
			break;

		default:
			break;
		}

		FUNC0( clip );
	}
}