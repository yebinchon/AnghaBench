
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {TYPE_3__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {int error; TYPE_2__* files; TYPE_3__ data; } ;
typedef TYPE_1__ OpenFiles_ProcessData ;
typedef TYPE_2__ OpenFiles_FileData ;
typedef TYPE_3__ OpenFiles_Data ;
typedef int FILE ;


 int O_WRONLY ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 char* String_readLine (int *) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int close (int) ;
 int dup2 (int,int ) ;
 int execlp (char*,char*,char*,char*,char*,char*,int *) ;
 int exit (int) ;
 int * fdopen (int,char*) ;
 int fork () ;
 int free (char*) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 int waitpid (int,int*,int ) ;
 void* xCalloc (int,int) ;
 int xSnprintf (char*,int,char*,int) ;
 int xStrdup (char*) ;

__attribute__((used)) static OpenFiles_ProcessData* OpenFilesScreen_getProcessData(pid_t pid) {
   char buffer[1025];
   xSnprintf(buffer, 1024, "%d", pid);
   OpenFiles_ProcessData* pdata = xCalloc(1, sizeof(OpenFiles_ProcessData));
   OpenFiles_FileData* fdata = ((void*)0);
   OpenFiles_Data* item = &(pdata->data);
   int fdpair[2];
   if (pipe(fdpair) == -1) {
      pdata->error = 1;
      return pdata;
   }
   pid_t child = fork();
   if (child == -1) {
      pdata->error = 1;
      return pdata;
   }
   if (child == 0) {
      close(fdpair[0]);
      dup2(fdpair[1], STDOUT_FILENO);
      close(fdpair[1]);
      int fdnull = open("/dev/null", O_WRONLY);
      if (fdnull < 0)
         exit(1);
      dup2(fdnull, STDERR_FILENO);
      close(fdnull);
      execlp("lsof", "lsof", "-P", "-p", buffer, "-F", ((void*)0));
      exit(127);
   }
   close(fdpair[1]);
   FILE* fd = fdopen(fdpair[0], "r");
   for (;;) {
      char* line = String_readLine(fd);
      if (!line) {
         break;
      }
      unsigned char cmd = line[0];
      if (cmd == 'f') {
         OpenFiles_FileData* nextFile = xCalloc(1, sizeof(OpenFiles_FileData));
         if (fdata == ((void*)0)) {
            pdata->files = nextFile;
         } else {
            fdata->next = nextFile;
         }
         fdata = nextFile;
         item = &(fdata->data);
      }
      item->data[cmd] = xStrdup(line + 1);
      free(line);
   }
   int wstatus;
   if (waitpid(child, &wstatus, 0) == -1) {
      pdata->error = 1;
      return pdata;
   }
   if (!WIFEXITED(wstatus))
      pdata->error = 1;
   else
      pdata->error = WEXITSTATUS(wstatus);
   return pdata;
}
