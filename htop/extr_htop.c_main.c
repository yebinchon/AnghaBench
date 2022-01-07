
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int UsersTable ;
struct TYPE_27__ {int delay; scalar_t__ sortKey; scalar_t__ pidWhiteList; scalar_t__ treeView; int useColors; int userId; } ;
struct TYPE_26__ {int height; } ;
struct TYPE_25__ {TYPE_2__* settings; int cpuCount; } ;
struct TYPE_24__ {int delay; int treeView; scalar_t__ sortKey; int direction; scalar_t__ changed; int colorScheme; } ;
struct TYPE_23__ {TYPE_4__* header; int * panel; TYPE_3__* pl; int * ut; TYPE_2__* settings; } ;
typedef TYPE_1__ State ;
typedef TYPE_2__ Settings ;
typedef int ScreenManager ;
typedef TYPE_3__ ProcessList ;
typedef int Panel ;
typedef int MainPanel ;
typedef TYPE_4__ Header ;
typedef TYPE_5__ CommandLineSettings ;


 int COLORSCHEME_MONOCHROME ;
 int COLS ;
 int * CRT_colors ;
 int CRT_done () ;
 int CRT_init (int,int ) ;
 int HORIZONTAL ;
 int Hashtable_delete (scalar_t__) ;
 int Header_delete (TYPE_4__*) ;
 TYPE_4__* Header_new (TYPE_3__*,TYPE_2__*,int) ;
 int Header_populateFromSettings (TYPE_4__*) ;
 int LC_CTYPE ;
 scalar_t__ LINES ;
 int * MainPanel_new () ;
 int MainPanel_setState (int *,TYPE_1__*) ;
 int MainPanel_updateTreeFunctions (int *,int) ;
 char* PROCDIR ;
 int Panel_getHeader (int *) ;
 int ProcessList_delete (TYPE_3__*) ;
 TYPE_3__* ProcessList_new (int *,scalar_t__,int ) ;
 int ProcessList_printHeader (TYPE_3__*,int ) ;
 int ProcessList_scan (TYPE_3__*) ;
 int ProcessList_setPanel (TYPE_3__*,int *) ;
 int Process_setupColumnWidths () ;
 size_t RESET_COLOR ;
 int R_OK ;
 int ScreenManager_add (int *,int *,int) ;
 int ScreenManager_delete (int *) ;
 int * ScreenManager_new (int ,int ,int ,int,int ,TYPE_4__*,TYPE_2__*,int) ;
 int ScreenManager_run (int *,int *,int *) ;
 int Settings_delete (TYPE_2__*) ;
 TYPE_2__* Settings_new (int ) ;
 int Settings_write (TYPE_2__*) ;
 int UsersTable_delete (int *) ;
 int * UsersTable_new () ;
 scalar_t__ access (char*,int ) ;
 int attroff (int ) ;
 int attron (int ) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 int millisleep (int) ;
 int mvhline (scalar_t__,int ,char,int ) ;
 TYPE_5__ parseArguments (int,char**) ;
 int refresh () ;
 int setlocale (int ,char*) ;
 int stderr ;

int main(int argc, char** argv) {

   char *lc_ctype = getenv("LC_CTYPE");
   if(lc_ctype != ((void*)0))
      setlocale(LC_CTYPE, lc_ctype);
   else if ((lc_ctype = getenv("LC_ALL")))
      setlocale(LC_CTYPE, lc_ctype);
   else
      setlocale(LC_CTYPE, "");

   CommandLineSettings flags = parseArguments(argc, argv);
   Process_setupColumnWidths();

   UsersTable* ut = UsersTable_new();
   ProcessList* pl = ProcessList_new(ut, flags.pidWhiteList, flags.userId);

   Settings* settings = Settings_new(pl->cpuCount);
   pl->settings = settings;

   Header* header = Header_new(pl, settings, 2);

   Header_populateFromSettings(header);

   if (flags.delay != -1)
      settings->delay = flags.delay;
   if (!flags.useColors)
      settings->colorScheme = COLORSCHEME_MONOCHROME;
   if (flags.treeView)
      settings->treeView = 1;

   CRT_init(settings->delay, settings->colorScheme);

   MainPanel* panel = MainPanel_new();
   ProcessList_setPanel(pl, (Panel*) panel);

   MainPanel_updateTreeFunctions(panel, settings->treeView);

   if (flags.sortKey > 0) {
      settings->sortKey = flags.sortKey;
      settings->treeView = 0;
      settings->direction = 1;
   }
   ProcessList_printHeader(pl, Panel_getHeader((Panel*)panel));

   State state = {
      .settings = settings,
      .ut = ut,
      .pl = pl,
      .panel = (Panel*) panel,
      .header = header,
   };
   MainPanel_setState(panel, &state);

   ScreenManager* scr = ScreenManager_new(0, header->height, 0, -1, HORIZONTAL, header, settings, 1);
   ScreenManager_add(scr, (Panel*) panel, -1);

   ProcessList_scan(pl);
   millisleep(75);
   ProcessList_scan(pl);

   ScreenManager_run(scr, ((void*)0), ((void*)0));

   attron(CRT_colors[RESET_COLOR]);
   mvhline(LINES-1, 0, ' ', COLS);
   attroff(CRT_colors[RESET_COLOR]);
   refresh();

   CRT_done();
   if (settings->changed)
      Settings_write(settings);
   Header_delete(header);
   ProcessList_delete(pl);

   ScreenManager_delete(scr);

   UsersTable_delete(ut);
   Settings_delete(settings);

   if(flags.pidWhiteList) {
      Hashtable_delete(flags.pidWhiteList);
   }
   return 0;
}
