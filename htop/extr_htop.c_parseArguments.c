
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct option {char* member_0; char member_3; int member_2; int const member_1; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int userId; int sortKey; int delay; int useColors; int treeView; int * pidWhiteList; } ;
typedef TYPE_1__ CommandLineSettings ;


 int Action_setUserOnly (char*,int*) ;
 int ColumnsPanel_fieldNameToIndex (char*) ;
 int EOF ;
 int * Hashtable_new (int,int) ;
 int Hashtable_put (int *,unsigned int,void*) ;
 int Platform_numberOfFields ;
 TYPE_3__* Process_fields ;
 unsigned int atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;

 char* optarg ;
 int printHelpFlag () ;
 int printVersionFlag () ;
 int printf (char*,char const*) ;

 int sscanf (char*,char*,int*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 char* strtok_r (char*,char*,char**) ;
 char* xStrdup (char*) ;

__attribute__((used)) static CommandLineSettings parseArguments(int argc, char** argv) {

   CommandLineSettings flags = {
      .pidWhiteList = ((void*)0),
      .userId = -1,
      .sortKey = 0,
      .delay = -1,
      .useColors = 1,
      .treeView = 0,
   };

   static struct option long_opts[] =
   {
      {"help", 129, 0, 'h'},
      {"version", 129, 0, 'v'},
      {"delay", 128, 0, 'd'},
      {"sort-key", 128, 0, 's'},
      {"user", 128, 0, 'u'},
      {"no-color", 129, 0, 'C'},
      {"no-colour",129, 0, 'C'},
      {"tree", 129, 0, 't'},
      {"pid", 128, 0, 'p'},
      {0,0,0,0}
   };

   int opt, opti=0;

   while ((opt = getopt_long(argc, argv, "hvCs:td:u:p:", long_opts, &opti))) {
      if (opt == EOF) break;
      switch (opt) {
         case 'h':
            printHelpFlag();
            break;
         case 'v':
            printVersionFlag();
            break;
         case 's':
            if (strcmp(optarg, "help") == 0) {
               for (int j = 1; j < Platform_numberOfFields; j++) {
                  const char* name = Process_fields[j].name;
                  if (name) printf ("%s\n", name);
               }
               exit(0);
            }
            flags.sortKey = ColumnsPanel_fieldNameToIndex(optarg);
            if (flags.sortKey == -1) {
               fprintf(stderr, "Error: invalid column \"%s\".\n", optarg);
            }
            break;
         case 'd':
            if (sscanf(optarg, "%16d", &(flags.delay)) == 1) {
               if (flags.delay < 1) flags.delay = 1;
               if (flags.delay > 100) flags.delay = 100;
            } else {
               fprintf(stderr, "Error: invalid delay value \"%s\".\n", optarg);
            }
            break;
         case 'u':
            if (!Action_setUserOnly(optarg, &(flags.userId))) {
               fprintf(stderr, "Error: invalid user \"%s\".\n", optarg);
            }
            break;
         case 'C':
            flags.useColors = 0;
            break;
         case 't':
            flags.treeView = 1;
            break;
         case 'p': {
            char* argCopy = xStrdup(optarg);
            char* saveptr;
            char* pid = strtok_r(argCopy, ",", &saveptr);

            if(!flags.pidWhiteList) {
               flags.pidWhiteList = Hashtable_new(8, 0);
            }

            while(pid) {
                unsigned int num_pid = atoi(pid);
                Hashtable_put(flags.pidWhiteList, num_pid, (void *) 1);
                pid = strtok_r(((void*)0), ",", &saveptr);
            }
            free(argCopy);

            break;
         }
         default:
            exit(1);
      }
   }
   return flags;
}
