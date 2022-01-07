
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int direction; int hideThreads; int shadowOtherUsers; int showThreadNames; int hideKernelThreads; int hideUserlandThreads; int treeView; int highlightBaseName; int highlightMegabytes; int detailedCPUTime; int countCPUsFromZero; int updateProcessNames; int cpuCount; int showProgramPath; int highlightThreads; int* fields; char* filename; int changed; int headerMargin; int delay; scalar_t__ colorScheme; int flags; int sortKey; } ;
typedef TYPE_1__ Settings ;
typedef int ProcessField ;


 int CRT_dropPrivileges () ;
 int CRT_restorePrivileges () ;
 int DEFAULT_DELAY ;
 int PERCENT_CPU ;
 int* Platform_defaultFields ;
 int Platform_numberOfFields ;
 TYPE_6__* Process_fields ;
 char const* SYSCONFDIR ;
 scalar_t__ S_ISLNK (int ) ;
 int Settings_defaultMeters (TYPE_1__*) ;
 int Settings_read (TYPE_1__*,char*) ;
 scalar_t__ Settings_write (TYPE_1__*) ;
 void* String_cat (char const*,char*) ;
 int free (char*) ;
 void* getenv (char*) ;
 int lstat (char*,struct stat*) ;
 int mkdir (char*,int) ;
 int unlink (char*) ;
 void* xCalloc (int,int) ;
 void* xStrdup (char const*) ;

Settings* Settings_new(int cpuCount) {

   Settings* this = xCalloc(1, sizeof(Settings));

   this->sortKey = PERCENT_CPU;
   this->direction = 1;
   this->hideThreads = 0;
   this->shadowOtherUsers = 0;
   this->showThreadNames = 0;
   this->hideKernelThreads = 0;
   this->hideUserlandThreads = 0;
   this->treeView = 0;
   this->highlightBaseName = 0;
   this->highlightMegabytes = 0;
   this->detailedCPUTime = 0;
   this->countCPUsFromZero = 0;
   this->updateProcessNames = 0;
   this->cpuCount = cpuCount;
   this->showProgramPath = 1;
   this->highlightThreads = 1;

   this->fields = xCalloc(Platform_numberOfFields+1, sizeof(ProcessField));


   this->flags = 0;
   ProcessField* defaults = Platform_defaultFields;
   for (int i = 0; defaults[i]; i++) {
      this->fields[i] = defaults[i];
      this->flags |= Process_fields[defaults[i]].flags;
   }

   char* legacyDotfile = ((void*)0);
   char* rcfile = getenv("HTOPRC");
   if (rcfile) {
      this->filename = xStrdup(rcfile);
   } else {
      const char* home = getenv("HOME");
      if (!home) home = "";
      const char* xdgConfigHome = getenv("XDG_CONFIG_HOME");
      char* configDir = ((void*)0);
      char* htopDir = ((void*)0);
      if (xdgConfigHome) {
         this->filename = String_cat(xdgConfigHome, "/htop/htoprc");
         configDir = xStrdup(xdgConfigHome);
         htopDir = String_cat(xdgConfigHome, "/htop");
      } else {
         this->filename = String_cat(home, "/.config/htop/htoprc");
         configDir = String_cat(home, "/.config");
         htopDir = String_cat(home, "/.config/htop");
      }
      legacyDotfile = String_cat(home, "/.htoprc");

      CRT_dropPrivileges();
      (void) mkdir(configDir, 0700);
      (void) mkdir(htopDir, 0700);
      free(htopDir);
      free(configDir);
      struct stat st;
      int err = lstat(legacyDotfile, &st);
      if (err || S_ISLNK(st.st_mode)) {
         free(legacyDotfile);
         legacyDotfile = ((void*)0);
      }
      CRT_restorePrivileges();
   }
   this->colorScheme = 0;
   this->changed = 0;
   this->delay = DEFAULT_DELAY;
   bool ok = 0;
   if (legacyDotfile) {
      ok = Settings_read(this, legacyDotfile);
      if (ok) {

         if (Settings_write(this))
            unlink(legacyDotfile);
      }
      free(legacyDotfile);
   }
   if (!ok) {
      ok = Settings_read(this, this->filename);
   }
   if (!ok) {
      this->changed = 1;

      char* systemSettings = String_cat(SYSCONFDIR, "/htoprc");
      ok = Settings_read(this, systemSettings);
      free(systemSettings);
   }
   if (!ok) {
      Settings_defaultMeters(this);
      this->hideKernelThreads = 1;
      this->highlightMegabytes = 1;
      this->highlightThreads = 1;
      this->headerMargin = 1;
   }
   return this;
}
