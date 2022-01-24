#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int brain_server; int version; int usage; int example_hashes; int backend_info; int /*<<< orphan*/  brain_session_whitelist; int /*<<< orphan*/  brain_password; int /*<<< orphan*/  brain_port; int /*<<< orphan*/  brain_host; } ;
typedef  TYPE_1__ user_options_t ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_20__ {TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMPTIME ; 
 char* INSTALL_FOLDER ; 
 char* SHARED_FOLDER ; 
 char* VERSION_TAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,char const*,char const*,int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*,int,char**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char*) ; 

int FUNC21 (int argc, char **argv)
{
  // this increases the size on windows dos boxes

  FUNC13 ();

  const time_t proc_start = FUNC14 (NULL);

  // hashcat main context

  hashcat_ctx_t *hashcat_ctx = (hashcat_ctx_t *) FUNC11 (sizeof (hashcat_ctx_t));

  if (FUNC6 (hashcat_ctx, event) == -1)
  {
    FUNC10 (hashcat_ctx);

    return -1;
  }
  // install and shared folder need to be set to recognize "make install" use

  const char *install_folder = NULL;
  const char *shared_folder  = NULL;

  #if defined (INSTALL_FOLDER)
  install_folder = INSTALL_FOLDER;
  #endif

  #if defined (SHARED_FOLDER)
  shared_folder = SHARED_FOLDER;
  #endif

  // initialize the user options with some defaults (you can override them later)

  if (FUNC18 (hashcat_ctx) == -1)
  {
    FUNC10 (hashcat_ctx);

    return -1;
  }

  // parse commandline parameters and check them

  if (FUNC16 (hashcat_ctx, argc, argv) == -1)
  {
    FUNC10 (hashcat_ctx);

    return -1;
  }

  if (FUNC19 (hashcat_ctx) == -1)
  {
    FUNC10 (hashcat_ctx);

    return -1;
  }

  // some early exits

  user_options_t *user_options = hashcat_ctx->user_options;

  #ifdef WITH_BRAIN
  if (user_options->brain_server == true)
  {
    const int rc = brain_server (user_options->brain_host, user_options->brain_port, user_options->brain_password, user_options->brain_session_whitelist);

    hcfree (hashcat_ctx);

    return rc;
  }
  #endif

  if (user_options->version == true)
  {
    FUNC12 ("%s\n", VERSION_TAG);

    FUNC10 (hashcat_ctx);

    return 0;
  }

  // init a hashcat session; this initializes backend devices, hwmon, etc

  FUNC20 (hashcat_ctx, VERSION_TAG);

  int rc_final = -1;

  if (FUNC9 (hashcat_ctx, install_folder, shared_folder, argc, argv, COMPTIME) == 0)
  {
    if (user_options->usage == true)
    {
      FUNC15 (hashcat_ctx);

      rc_final = 0;
    }
    else if (user_options->example_hashes == true)
    {
      FUNC3 (hashcat_ctx);

      rc_final = 0;
    }
    else if (user_options->backend_info == true)
    {
      // if this is just backend_info, no need to execute some real cracking session

      FUNC0 (hashcat_ctx);

      rc_final = 0;
    }
    else
    {
      // now execute hashcat

      FUNC1 (hashcat_ctx);

      FUNC17 (hashcat_ctx);

      rc_final = FUNC8 (hashcat_ctx);
    }
  }

  // finish the hashcat session, this shuts down backend devices, hwmon, etc

  FUNC7 (hashcat_ctx);

  // finished with hashcat, clean up

  const time_t proc_stop = FUNC14 (NULL);

  FUNC4 (hashcat_ctx, proc_start, proc_stop);

  FUNC5 (hashcat_ctx);

  FUNC10 (hashcat_ctx);

  return rc_final;
}