#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ colorScheme; void* delay; void* accountGuestInCPUMeter; void* updateProcessNames; void* countCPUsFromZero; void* detailedCPUTime; void* headerMargin; void* highlightThreads; void* highlightMegabytes; void* highlightBaseName; void* showProgramPath; void* showThreadNames; void* shadowOtherUsers; void* hideUserlandThreads; void* hideKernelThreads; void* hideThreads; void* treeView; void* direction; void* sortKey; int /*<<< orphan*/  flags; int /*<<< orphan*/  fields; } ;
typedef  TYPE_1__ Settings ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ LAST_COLORSCHEME ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char** FUNC8 (char*,char,int*) ; 
 void* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static bool FUNC14(Settings* this, const char* fileName) {
   FILE* fd;
   
   FUNC0();
   fd = FUNC11(fileName, "r");
   FUNC1();
   if (!fd)
      return false;
   
   bool didReadMeters = false;
   bool didReadFields = false;
   for (;;) {
      char* line = FUNC7(fd);
      if (!line) {
         break;
      }
      int nOptions;
      char** option = FUNC8(line, '=', &nOptions);
      FUNC12 (line);
      if (nOptions < 2) {
         FUNC6(option);
         continue;
      }
      if (FUNC5(option[0], "fields")) {
         FUNC13(this->fields, &(this->flags), option[1]);
         didReadFields = true;
      } else if (FUNC5(option[0], "sort_key")) {
         // This "+1" is for compatibility with the older enum format.
         this->sortKey = FUNC9(option[1]) + 1;
      } else if (FUNC5(option[0], "sort_direction")) {
         this->direction = FUNC9(option[1]);
      } else if (FUNC5(option[0], "tree_view")) {
         this->treeView = FUNC9(option[1]);
      } else if (FUNC5(option[0], "hide_threads")) {
         this->hideThreads = FUNC9(option[1]);
      } else if (FUNC5(option[0], "hide_kernel_threads")) {
         this->hideKernelThreads = FUNC9(option[1]);
      } else if (FUNC5(option[0], "hide_userland_threads")) {
         this->hideUserlandThreads = FUNC9(option[1]);
      } else if (FUNC5(option[0], "shadow_other_users")) {
         this->shadowOtherUsers = FUNC9(option[1]);
      } else if (FUNC5(option[0], "show_thread_names")) {
         this->showThreadNames = FUNC9(option[1]);
      } else if (FUNC5(option[0], "show_program_path")) {
         this->showProgramPath = FUNC9(option[1]);
      } else if (FUNC5(option[0], "highlight_base_name")) {
         this->highlightBaseName = FUNC9(option[1]);
      } else if (FUNC5(option[0], "highlight_megabytes")) {
         this->highlightMegabytes = FUNC9(option[1]);
      } else if (FUNC5(option[0], "highlight_threads")) {
         this->highlightThreads = FUNC9(option[1]);
      } else if (FUNC5(option[0], "header_margin")) {
         this->headerMargin = FUNC9(option[1]);
      } else if (FUNC5(option[0], "expand_system_time")) {
         // Compatibility option.
         this->detailedCPUTime = FUNC9(option[1]);
      } else if (FUNC5(option[0], "detailed_cpu_time")) {
         this->detailedCPUTime = FUNC9(option[1]);
      } else if (FUNC5(option[0], "cpu_count_from_zero")) {
         this->countCPUsFromZero = FUNC9(option[1]);
      } else if (FUNC5(option[0], "update_process_names")) {
         this->updateProcessNames = FUNC9(option[1]);
      } else if (FUNC5(option[0], "account_guest_in_cpu_meter")) {
         this->accountGuestInCPUMeter = FUNC9(option[1]);
      } else if (FUNC5(option[0], "delay")) {
         this->delay = FUNC9(option[1]);
      } else if (FUNC5(option[0], "color_scheme")) {
         this->colorScheme = FUNC9(option[1]);
         if (this->colorScheme < 0 || this->colorScheme >= LAST_COLORSCHEME) this->colorScheme = 0;
      } else if (FUNC5(option[0], "left_meters")) {
         FUNC4(this, option[1], 0);
         didReadMeters = true;
      } else if (FUNC5(option[0], "right_meters")) {
         FUNC4(this, option[1], 1);
         didReadMeters = true;
      } else if (FUNC5(option[0], "left_meter_modes")) {
         FUNC3(this, option[1], 0);
         didReadMeters = true;
      } else if (FUNC5(option[0], "right_meter_modes")) {
         FUNC3(this, option[1], 1);
         didReadMeters = true;
      }
      FUNC6(option);
   }
   FUNC10(fd);
   if (!didReadMeters) {
      FUNC2(this);
   }
   return didReadFields;
}