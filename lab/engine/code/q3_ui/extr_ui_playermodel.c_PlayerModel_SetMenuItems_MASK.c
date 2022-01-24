#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* string; } ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
struct TYPE_8__ {int nummodels; char** modelnames; int selectedmodel; int modelpage; TYPE_3__ skinname; TYPE_2__ modelname; int /*<<< orphan*/  modelskin; TYPE_1__ playername; } ;

/* Variables and functions */
 int MAX_MODELSPERPAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_4__ s_playermodel ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10( void )
{
	int				i;
	int				maxlen;
	char			modelskin[64];
	char*			buffptr;
	char*			pdest;

	// name
	FUNC9( "name", s_playermodel.playername.string, 16 );
	FUNC0( s_playermodel.playername.string );

	// model
	FUNC9( "model", s_playermodel.modelskin, 64 );
	
	// use default skin if none is set
	if (!FUNC6(s_playermodel.modelskin, '/')) {
		FUNC1(s_playermodel.modelskin, 64, "/default");
	}
	
	// find model in our list
	for (i=0; i<s_playermodel.nummodels; i++)
	{
		// strip icon_
		buffptr  = s_playermodel.modelnames[i] + FUNC7("models/players/");
		pdest    = FUNC8(buffptr,"icon_");
		if (pdest)
		{
			FUNC3(modelskin,buffptr,pdest-buffptr+1);
			FUNC5(modelskin,pdest + 5);
		}
		else
			continue;

		if (!FUNC2( s_playermodel.modelskin, modelskin ))
		{
			// found pic, set selection here		
			s_playermodel.selectedmodel = i;
			s_playermodel.modelpage     = i/MAX_MODELSPERPAGE;

			// separate the model name
			maxlen = pdest-buffptr;
			if (maxlen > 16)
				maxlen = 16;
			FUNC3( s_playermodel.modelname.string, buffptr, maxlen );
			FUNC4( s_playermodel.modelname.string );

			// separate the skin name
			maxlen = FUNC7(pdest+5)+1;
			if (maxlen > 16)
				maxlen = 16;
			FUNC3( s_playermodel.skinname.string, pdest+5, maxlen );
			FUNC4( s_playermodel.skinname.string );
			break;
		}
	}
}