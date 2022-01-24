#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gzFile ;

/* Variables and functions */
#define  TGZ_EXTRACT 129 
#define  TGZ_LIST 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* prog ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int,char**) ; 

int FUNC10(int argc,char **argv)
{
    int         action = TGZ_EXTRACT;
    int         arg = 1;
    char        *TGZfile;
    gzFile      *f;

    prog = FUNC8(argv[0],'\\');
    if (prog == NULL)
      {
        prog = FUNC8(argv[0],'/');
        if (prog == NULL)
          {
            prog = FUNC8(argv[0],':');
            if (prog == NULL)
              prog = argv[0];
            else
              prog++;
          }
        else
          prog++;
      }
    else
      prog++;

    if (argc == 1)
      FUNC6(0);

    if (FUNC7(argv[arg],"-l") == 0)
      {
        action = TGZ_LIST;
        if (argc == ++arg)
          FUNC6(0);
      }
    else if (FUNC7(argv[arg],"-h") == 0)
      {
        FUNC6(0);
      }

    if ((TGZfile = FUNC0(argv[arg])) == NULL)
      FUNC1(argv[arg]);

    ++arg;
    if ((action == TGZ_LIST) && (arg != argc))
      FUNC6(1);

/*
 *  Process the TGZ file
 */
    switch(action)
      {
      case TGZ_LIST:
      case TGZ_EXTRACT:
        f = FUNC5(TGZfile,"rb");
        if (f == NULL)
          {
            FUNC4(stderr,"%s: Couldn't gzopen %s\n",prog,TGZfile);
            return 1;
          }
        FUNC3(FUNC9(f, action, arg, argc, argv));
      break;

      default:
        FUNC2("Unknown option");
        FUNC3(1);
      }

    return 0;
}