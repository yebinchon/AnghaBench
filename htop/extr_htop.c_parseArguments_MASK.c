#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct option {char* member_0; char member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  const member_1; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int userId; int sortKey; int delay; int useColors; int treeView; int /*<<< orphan*/ * pidWhiteList; } ;
typedef  TYPE_1__ CommandLineSettings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int FUNC1 (char*) ; 
 int EOF ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,void*) ; 
 int Platform_numberOfFields ; 
 TYPE_3__* Process_fields ; 
 unsigned int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int,char**,char*,struct option*,int*) ; 
#define  no_argument 129 
 char* optarg ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
#define  required_argument 128 
 int FUNC12 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char*,char*,char**) ; 
 char* FUNC15 (char*) ; 

__attribute__((used)) static CommandLineSettings FUNC16(int argc, char** argv) {

   CommandLineSettings flags = {
      .pidWhiteList = NULL,
      .userId = -1, // -1 is guaranteed to be an invalid uid_t (see setreuid(2))
      .sortKey = 0,
      .delay = -1,
      .useColors = true,
      .treeView = false,
   };

   static struct option long_opts[] =
   {
      {"help",     no_argument,         0, 'h'},
      {"version",  no_argument,         0, 'v'},
      {"delay",    required_argument,   0, 'd'},
      {"sort-key", required_argument,   0, 's'},
      {"user",     required_argument,   0, 'u'},
      {"no-color", no_argument,         0, 'C'},
      {"no-colour",no_argument,         0, 'C'},
      {"tree",     no_argument,         0, 't'},
      {"pid",      required_argument,   0, 'p'},
      {0,0,0,0}
   };

   int opt, opti=0;
   /* Parse arguments */
   while ((opt = FUNC8(argc, argv, "hvCs:td:u:p:", long_opts, &opti))) {
      if (opt == EOF) break;
      switch (opt) {
         case 'h':
            FUNC9();
            break;
         case 'v':
            FUNC10();
            break;
         case 's':
            if (FUNC13(optarg, "help") == 0) {
               for (int j = 1; j < Platform_numberOfFields; j++) {
                  const char* name = Process_fields[j].name;
                  if (name) FUNC11 ("%s\n", name);
               }
               FUNC5(0);
            }
            flags.sortKey = FUNC1(optarg);
            if (flags.sortKey == -1) {
               FUNC6(stderr, "Error: invalid column \"%s\".\n", optarg);
            }
            break;
         case 'd':
            if (FUNC12(optarg, "%16d", &(flags.delay)) == 1) {
               if (flags.delay < 1) flags.delay = 1;
               if (flags.delay > 100) flags.delay = 100;
            } else {
               FUNC6(stderr, "Error: invalid delay value \"%s\".\n", optarg);
            }
            break;
         case 'u':
            if (!FUNC0(optarg, &(flags.userId))) {
               FUNC6(stderr, "Error: invalid user \"%s\".\n", optarg);
            }
            break;
         case 'C':
            flags.useColors = false;
            break;
         case 't':
            flags.treeView = true;
            break;
         case 'p': {
            char* argCopy = FUNC15(optarg);
            char* saveptr;
            char* pid = FUNC14(argCopy, ",", &saveptr);

            if(!flags.pidWhiteList) {
               flags.pidWhiteList = FUNC2(8, false);
            }

            while(pid) {
                unsigned int num_pid = FUNC4(pid);
                FUNC3(flags.pidWhiteList, num_pid, (void *) 1);
                pid = FUNC14(NULL, ",", &saveptr);
            }
            FUNC7(argCopy);

            break;
         }
         default:
            FUNC5(1);
      }
   }
   return flags;
}