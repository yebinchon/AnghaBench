#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sfxHandle_t ;
typedef  void* qboolean ;
struct TYPE_6__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;
struct TYPE_7__ {int bind2; int bind1; int id; int /*<<< orphan*/  label; } ;
typedef  TYPE_2__ bind_t ;
struct TYPE_9__ {size_t cursor; scalar_t__* items; } ;
struct TYPE_8__ {TYPE_5__ menu; void* waitingforkey; void* changesmade; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  K_BACKSPACE 132 
 int K_CHAR_FLAG ; 
#define  K_DEL 131 
#define  K_ESCAPE 130 
#define  K_KP_DEL 129 
#define  K_MOUSE2 128 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 TYPE_2__* g_bindings ; 
 int /*<<< orphan*/  menu_out_sound ; 
 void* qfalse ; 
 void* qtrue ; 
 TYPE_3__ s_controls ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static sfxHandle_t FUNC4( int key )
{
	int			id;
	int			i;
	qboolean	found;
	bind_t*		bindptr;
	found = qfalse;

	if (!s_controls.waitingforkey)
	{
		switch (key)
		{
			case K_BACKSPACE:
			case K_DEL:
			case K_KP_DEL:
				key = -1;
				break;
		
			case K_MOUSE2:
			case K_ESCAPE:
				if (s_controls.changesmade)
					FUNC0();
				goto ignorekey;	

			default:
				goto ignorekey;
		}
	}
	else
	{
		if (key & K_CHAR_FLAG)
			goto ignorekey;

		switch (key)
		{
			case K_ESCAPE:
				s_controls.waitingforkey = qfalse;
				FUNC1();
				return (menu_out_sound);
	
			case '`':
				goto ignorekey;
		}
	}

	s_controls.changesmade = qtrue;
	
	if (key != -1)
	{
		// remove from any other bind
		bindptr = g_bindings;
		for (i=0; ;i++,bindptr++)
		{
			if (!bindptr->label)	
				break;

			if (bindptr->bind2 == key)
				bindptr->bind2 = -1;

			if (bindptr->bind1 == key)
			{
				bindptr->bind1 = bindptr->bind2;	
				bindptr->bind2 = -1;
			}
		}
	}

	// assign key to local store
	id      = ((menucommon_s*)(s_controls.menu.items[s_controls.menu.cursor]))->id;
	bindptr = g_bindings;
	for (i=0; ;i++,bindptr++)
	{
		if (!bindptr->label)	
			break;
		
		if (bindptr->id == id)
		{
			found = qtrue;
			if (key == -1)
			{
				if( bindptr->bind1 != -1 ) {
					FUNC3( bindptr->bind1, "" );
					bindptr->bind1 = -1;
				}
				if( bindptr->bind2 != -1 ) {
					FUNC3( bindptr->bind2, "" );
					bindptr->bind2 = -1;
				}
			}
			else if (bindptr->bind1 == -1) {
				bindptr->bind1 = key;
			}
			else if (bindptr->bind1 != key && bindptr->bind2 == -1) {
				bindptr->bind2 = key;
			}
			else
			{
				FUNC3( bindptr->bind1, "" );
				FUNC3( bindptr->bind2, "" );
				bindptr->bind1 = key;
				bindptr->bind2 = -1;
			}						
			break;
		}
	}				
		
	s_controls.waitingforkey = qfalse;

	if (found)
	{	
		FUNC1();
		return (menu_out_sound);
	}

ignorekey:
	return FUNC2( &s_controls.menu, key );
}