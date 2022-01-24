#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int pid_t ;
struct TYPE_7__ {int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {TYPE_3__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {int error; TYPE_2__* files; TYPE_3__ data; } ;
typedef  TYPE_1__ OpenFiles_ProcessData ;
typedef  TYPE_2__ OpenFiles_FileData ;
typedef  TYPE_3__ OpenFiles_Data ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (int,char*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int*) ; 
 int FUNC12 (int,int*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static OpenFiles_ProcessData* FUNC16(pid_t pid) {
   char buffer[1025];
   FUNC14(buffer, 1024, "%d", pid);
   OpenFiles_ProcessData* pdata = FUNC13(1, sizeof(OpenFiles_ProcessData));
   OpenFiles_FileData* fdata = NULL;
   OpenFiles_Data* item = &(pdata->data);
   int fdpair[2];
   if (FUNC11(fdpair) == -1) {
      pdata->error = 1;
      return pdata;
   }
   pid_t child = FUNC8();
   if (child == -1) {
      pdata->error = 1;
      return pdata;
   }
   if (child == 0) {
      FUNC3(fdpair[0]);
      FUNC4(fdpair[1], STDOUT_FILENO);
      FUNC3(fdpair[1]);
      int fdnull = FUNC10("/dev/null", O_WRONLY);
      if (fdnull < 0)
         FUNC6(1);
      FUNC4(fdnull, STDERR_FILENO);
      FUNC3(fdnull);
      FUNC5("lsof", "lsof", "-P", "-p", buffer, "-F", NULL);
      FUNC6(127);
   }
   FUNC3(fdpair[1]);
   FILE* fd = FUNC7(fdpair[0], "r");
   for (;;) {
      char* line = FUNC0(fd);
      if (!line) {
         break;
      }
      unsigned char cmd = line[0];
      if (cmd == 'f') {
         OpenFiles_FileData* nextFile = FUNC13(1, sizeof(OpenFiles_FileData));
         if (fdata == NULL) {
            pdata->files = nextFile;
         } else {
            fdata->next = nextFile;
         }
         fdata = nextFile;
         item = &(fdata->data);
      }
      item->data[cmd] = FUNC15(line + 1);
      FUNC9(line);
   }
   int wstatus;
   if (FUNC12(child, &wstatus, 0) == -1) {
      pdata->error = 1;
      return pdata;
   }
   if (!FUNC2(wstatus))
      pdata->error = 1;
   else
      pdata->error = FUNC1(wstatus);
   return pdata;
}