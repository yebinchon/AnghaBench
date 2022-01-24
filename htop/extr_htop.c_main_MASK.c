#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UsersTable ;
struct TYPE_27__ {int delay; scalar_t__ sortKey; scalar_t__ pidWhiteList; scalar_t__ treeView; int /*<<< orphan*/  useColors; int /*<<< orphan*/  userId; } ;
struct TYPE_26__ {int /*<<< orphan*/  height; } ;
struct TYPE_25__ {TYPE_2__* settings; int /*<<< orphan*/  cpuCount; } ;
struct TYPE_24__ {int delay; int treeView; scalar_t__ sortKey; int direction; scalar_t__ changed; int /*<<< orphan*/  colorScheme; } ;
struct TYPE_23__ {TYPE_4__* header; int /*<<< orphan*/ * panel; TYPE_3__* pl; int /*<<< orphan*/ * ut; TYPE_2__* settings; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Settings ;
typedef  int /*<<< orphan*/  ScreenManager ;
typedef  TYPE_3__ ProcessList ;
typedef  int /*<<< orphan*/  Panel ;
typedef  int /*<<< orphan*/  MainPanel ;
typedef  TYPE_4__ Header ;
typedef  TYPE_5__ CommandLineSettings ;

/* Variables and functions */
 int /*<<< orphan*/  COLORSCHEME_MONOCHROME ; 
 int /*<<< orphan*/  COLS ; 
 int /*<<< orphan*/ * CRT_colors ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HORIZONTAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 scalar_t__ LINES ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* PROCDIR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 size_t RESET_COLOR ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 TYPE_2__* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 () ; 
 scalar_t__ FUNC25 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC30 (char*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (scalar_t__,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 TYPE_5__ FUNC33 (int,char**) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC36(int argc, char** argv) {

   char *lc_ctype = FUNC30("LC_CTYPE");
   if(lc_ctype != NULL)
      FUNC35(LC_CTYPE, lc_ctype);
   else if ((lc_ctype = FUNC30("LC_ALL")))
      FUNC35(LC_CTYPE, lc_ctype);
   else
      FUNC35(LC_CTYPE, "");

   CommandLineSettings flags = FUNC33(argc, argv); // may exit()

#ifdef HAVE_PROC
   if (access(PROCDIR, R_OK) != 0) {
      fprintf(stderr, "Error: could not read procfs (compiled to look in %s).\n", PROCDIR);
      exit(1);
   }
#endif
   
   FUNC15();
   
   UsersTable* ut = FUNC24();
   ProcessList* pl = FUNC11(ut, flags.pidWhiteList, flags.userId);
   
   Settings* settings = FUNC21(pl->cpuCount);
   pl->settings = settings;

   Header* header = FUNC4(pl, settings, 2);

   FUNC5(header);

   if (flags.delay != -1)
      settings->delay = flags.delay;
   if (!flags.useColors) 
      settings->colorScheme = COLORSCHEME_MONOCHROME;
   if (flags.treeView)
      settings->treeView = true;

   FUNC1(settings->delay, settings->colorScheme);
   
   MainPanel* panel = FUNC6();
   FUNC14(pl, (Panel*) panel);

   FUNC8(panel, settings->treeView);
      
   if (flags.sortKey > 0) {
      settings->sortKey = flags.sortKey;
      settings->treeView = false;
      settings->direction = 1;
   }
   FUNC12(pl, FUNC9((Panel*)panel));

   State state = {
      .settings = settings,
      .ut = ut,
      .pl = pl,
      .panel = (Panel*) panel,
      .header = header,
   };
   FUNC7(panel, &state);
   
   ScreenManager* scr = FUNC18(0, header->height, 0, -1, HORIZONTAL, header, settings, true);
   FUNC16(scr, (Panel*) panel, -1);

   FUNC13(pl);
   FUNC31(75);
   FUNC13(pl);

   FUNC19(scr, NULL, NULL);   
   
   FUNC27(CRT_colors[RESET_COLOR]);
   FUNC32(LINES-1, 0, ' ', COLS);
   FUNC26(CRT_colors[RESET_COLOR]);
   FUNC34();
   
   FUNC0();
   if (settings->changed)
      FUNC22(settings);
   FUNC3(header);
   FUNC10(pl);

   FUNC17(scr);
   
   FUNC23(ut);
   FUNC20(settings);
   
   if(flags.pidWhiteList) {
      FUNC2(flags.pidWhiteList);
   }
   return 0;
}