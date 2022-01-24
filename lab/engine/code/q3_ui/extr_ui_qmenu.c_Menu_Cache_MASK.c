#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ hardwareType; } ;
struct TYPE_4__ {void* menuBackNoLogoShader; void* menuBackShader; TYPE_1__ glconfig; void* whiteShader; void* rb_off; void* rb_on; void* cursor; void* charsetPropB; void* charsetPropGlow; void* charsetProp; void* charset; } ;

/* Variables and functions */
 scalar_t__ GLHW_RAGEPRO ; 
 void* menu_buzz_sound ; 
 void* menu_in_sound ; 
 void* menu_move_sound ; 
 int menu_null_sound ; 
 void* menu_out_sound ; 
 int /*<<< orphan*/  qfalse ; 
 void* sliderBar ; 
 void* sliderButton_0 ; 
 void* sliderButton_1 ; 
 void* FUNC0 (char*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uis ; 
 void* weaponChangeSound ; 

void FUNC2( void )
{
	uis.charset			= FUNC0( "gfx/2d/bigchars" );
	uis.charsetProp		= FUNC0( "menu/art/font1_prop.tga" );
	uis.charsetPropGlow	= FUNC0( "menu/art/font1_prop_glo.tga" );
	uis.charsetPropB	= FUNC0( "menu/art/font2_prop.tga" );
	uis.cursor          = FUNC0( "menu/art/3_cursor2" );
	uis.rb_on           = FUNC0( "menu/art/switch_on" );
	uis.rb_off          = FUNC0( "menu/art/switch_off" );

	uis.whiteShader = FUNC0( "white" );
	if ( uis.glconfig.hardwareType == GLHW_RAGEPRO ) {
		// the blend effect turns to shit with the normal 
		uis.menuBackShader	= FUNC0( "menubackRagePro" );
	} else {
		uis.menuBackShader	= FUNC0( "menuback" );
	}
	uis.menuBackNoLogoShader = FUNC0( "menubacknologo" );

	menu_in_sound	= FUNC1( "sound/misc/menu1.wav", qfalse );
	menu_move_sound	= FUNC1( "sound/misc/menu2.wav", qfalse );
	menu_out_sound	= FUNC1( "sound/misc/menu3.wav", qfalse );
	menu_buzz_sound	= FUNC1( "sound/misc/menu4.wav", qfalse );
	weaponChangeSound	= FUNC1( "sound/weapons/change.wav", qfalse );

	// need a nonzero sound, make an empty sound for this
	menu_null_sound = -1;

	sliderBar = FUNC0( "menu/art/slider2" );
	sliderButton_0 = FUNC0( "menu/art/sliderbutt_0" );
	sliderButton_1 = FUNC0( "menu/art/sliderbutt_1" );
}