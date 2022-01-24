#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int direction; int hideThreads; int shadowOtherUsers; int showThreadNames; int hideKernelThreads; int hideUserlandThreads; int treeView; int highlightBaseName; int highlightMegabytes; int detailedCPUTime; int countCPUsFromZero; int updateProcessNames; int cpuCount; int showProgramPath; int highlightThreads; int* fields; char* filename; int changed; int headerMargin; int /*<<< orphan*/  delay; scalar_t__ colorScheme; int /*<<< orphan*/  flags; int /*<<< orphan*/  sortKey; } ;
typedef  TYPE_1__ Settings ;
typedef  int ProcessField ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  DEFAULT_DELAY ; 
 int /*<<< orphan*/  PERCENT_CPU ; 
 int* Platform_defaultFields ; 
 int Platform_numberOfFields ; 
 TYPE_6__* Process_fields ; 
 char const* SYSCONFDIR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 void* FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 void* FUNC8 (char*) ; 
 int FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 void* FUNC12 (int,int) ; 
 void* FUNC13 (char const*) ; 

Settings* FUNC14(int cpuCount) {
  
   Settings* this = FUNC12(1, sizeof(Settings));

   this->sortKey = PERCENT_CPU;
   this->direction = 1;
   this->hideThreads = false;
   this->shadowOtherUsers = false;
   this->showThreadNames = false;
   this->hideKernelThreads = false;
   this->hideUserlandThreads = false;
   this->treeView = false;
   this->highlightBaseName = false;
   this->highlightMegabytes = false;
   this->detailedCPUTime = false;
   this->countCPUsFromZero = false;
   this->updateProcessNames = false;
   this->cpuCount = cpuCount;
   this->showProgramPath = true;
   this->highlightThreads = true;
   
   this->fields = FUNC12(Platform_numberOfFields+1, sizeof(ProcessField));
   // TODO: turn 'fields' into a Vector,
   // (and ProcessFields into proper objects).
   this->flags = 0;
   ProcessField* defaults = Platform_defaultFields;
   for (int i = 0; defaults[i]; i++) {
      this->fields[i] = defaults[i];
      this->flags |= Process_fields[defaults[i]].flags;
   }

   char* legacyDotfile = NULL;
   char* rcfile = FUNC8("HTOPRC");
   if (rcfile) {
      this->filename = FUNC13(rcfile);
   } else {
      const char* home = FUNC8("HOME");
      if (!home) home = "";
      const char* xdgConfigHome = FUNC8("XDG_CONFIG_HOME");
      char* configDir = NULL;
      char* htopDir = NULL;
      if (xdgConfigHome) {
         this->filename = FUNC6(xdgConfigHome, "/htop/htoprc");
         configDir = FUNC13(xdgConfigHome);
         htopDir = FUNC6(xdgConfigHome, "/htop");
      } else {
         this->filename = FUNC6(home, "/.config/htop/htoprc");
         configDir = FUNC6(home, "/.config");
         htopDir = FUNC6(home, "/.config/htop");
      }
      legacyDotfile = FUNC6(home, "/.htoprc");
      
      FUNC0();
      (void) FUNC10(configDir, 0700);
      (void) FUNC10(htopDir, 0700);
      FUNC7(htopDir);
      FUNC7(configDir);
      struct stat st;
      int err = FUNC9(legacyDotfile, &st);
      if (err || FUNC2(st.st_mode)) {
         FUNC7(legacyDotfile);
         legacyDotfile = NULL;
      }
      FUNC1();
   }
   this->colorScheme = 0;
   this->changed = false;
   this->delay = DEFAULT_DELAY;
   bool ok = false;
   if (legacyDotfile) {
      ok = FUNC4(this, legacyDotfile);
      if (ok) {
         // Transition to new location and delete old configuration file
         if (FUNC5(this))
            FUNC11(legacyDotfile);
      }
      FUNC7(legacyDotfile);
   }
   if (!ok) {
      ok = FUNC4(this, this->filename);
   }
   if (!ok) {
      this->changed = true;
      // TODO: how to get SYSCONFDIR correctly through Autoconf?
      char* systemSettings = FUNC6(SYSCONFDIR, "/htoprc");
      ok = FUNC4(this, systemSettings);
      FUNC7(systemSettings);
   }
   if (!ok) {
      FUNC3(this);
      this->hideKernelThreads = true;
      this->highlightMegabytes = true;
      this->highlightThreads = true;
      this->headerMargin = true;
   }
   return this;
}