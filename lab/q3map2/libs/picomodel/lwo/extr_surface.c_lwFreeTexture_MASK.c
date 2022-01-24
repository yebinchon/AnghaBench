#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_5__* ikey; TYPE_5__* key; } ;
struct TYPE_9__ {TYPE_5__* data; TYPE_5__* name; } ;
struct TYPE_8__ {TYPE_5__* vmap_name; } ;
struct TYPE_11__ {TYPE_3__ grad; TYPE_2__ proc; TYPE_1__ imap; } ;
struct TYPE_12__ {int type; TYPE_4__ param; struct TYPE_12__* ord; } ;
typedef  TYPE_5__ lwTexture ;

/* Variables and functions */
#define  ID_GRAD 130 
#define  ID_IMAP 129 
#define  ID_PROC 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 

void FUNC1( lwTexture *t ){
	if ( t ) {
		if ( t->ord ) {
			FUNC0( t->ord );
		}
		switch ( t->type ) {
		case ID_IMAP:
			if ( t->param.imap.vmap_name ) {
				FUNC0( t->param.imap.vmap_name );
			}
			break;
		case ID_PROC:
			if ( t->param.proc.name ) {
				FUNC0( t->param.proc.name );
			}
			if ( t->param.proc.data ) {
				FUNC0( t->param.proc.data );
			}
			break;
		case ID_GRAD:
			if ( t->param.grad.key ) {
				FUNC0( t->param.grad.key );
			}
			if ( t->param.grad.ikey ) {
				FUNC0( t->param.grad.ikey );
			}
			break;
		}
		FUNC0( t );
	}
}