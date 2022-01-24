#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int brain_client; int /*<<< orphan*/  rp_gen_seed; int /*<<< orphan*/  rp_gen_seed_chgd; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_28__ {int /*<<< orphan*/  folder_config; TYPE_1__* user_options; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int const) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int FUNC12 (TYPE_2__*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int FUNC15 (TYPE_2__*) ; 
 int FUNC16 (TYPE_2__*) ; 
 int FUNC17 (TYPE_2__*,int,char**) ; 
 int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (TYPE_2__*) ; 
 int FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 

int FUNC30 (hashcat_ctx_t *hashcat_ctx, const char *install_folder, const char *shared_folder, int argc, char **argv, const int comptime)
{
  user_options_t *user_options = hashcat_ctx->user_options;

  /**
   * make it a bit more comfortable to use some of the special modes in hashcat
   */

  FUNC29 (hashcat_ctx);

  /**
   * event init (needed for logging so should be first)
   */

  if (FUNC6 (hashcat_ctx) == -1) return -1;

  /**
   * status init
   */

  if (FUNC22 (hashcat_ctx) == -1) return -1;

  /**
   * folder
   */

  if (FUNC7 (hashcat_ctx, install_folder, shared_folder) == -1) return -1;

  /**
   * pidfile
   */

  if (FUNC15 (hashcat_ctx) == -1) return -1;

  /**
   * restore
   */

  if (FUNC17 (hashcat_ctx, argc, argv) == -1) return -1;

  /**
   * process user input
   */

  FUNC28 (hashcat_ctx);

  FUNC26 (hashcat_ctx);

  FUNC27 (hashcat_ctx);

  /**
   * windows and sockets...
   */

  #ifdef WITH_BRAIN
  #if defined (_WIN)
  if (user_options->brain_client == true)
  {
    WSADATA wsaData;

    WORD wVersionRequested = MAKEWORD (2,2);

    if (WSAStartup (wVersionRequested, &wsaData) != NO_ERROR)
    {
      fprintf (stderr, "WSAStartup: %s\n", strerror (errno));

      return -1;
    }
  }
  #endif
  #endif

  /**
   * logfile
   */

  if (FUNC11 (hashcat_ctx) == -1) return -1;

  /**
   * cpu affinity
   */

  if (FUNC18 (hashcat_ctx) == -1) return -1;

  /**
   * prepare seeding for random number generator, required by logfile and rules generator
   */

  FUNC20 (user_options->rp_gen_seed_chgd, user_options->rp_gen_seed);

  /**
   * To help users a bit
   */

  FUNC19 (hashcat_ctx->folder_config);

  FUNC21 ();

  /**
   * tuning db
   */

  if (FUNC24 (hashcat_ctx) == -1) return -1;

  /**
   * induction directory
   */

  if (FUNC10 (hashcat_ctx) == -1) return -1;

  /**
   * outfile-check directory
   */

  if (FUNC13 (hashcat_ctx) == -1) return -1;

  /**
   * outfile itself
   */

  if (FUNC14 (hashcat_ctx) == -1) return -1;

  /**
   * potfile init
   * this is only setting path because potfile can be used in read and write mode depending on user options
   * plus it depends on hash_mode, so we continue using it in outer_loop
   */

  if (FUNC16 (hashcat_ctx) == -1) return -1;

  /**
   * dictstat init
   */

  if (FUNC5 (hashcat_ctx) == -1) return -1;

  /**
   * loopback init
   */

  if (FUNC12 (hashcat_ctx) == -1) return -1;

  /**
   * debugfile init
   */

  if (FUNC4 (hashcat_ctx) == -1) return -1;

  /**
   * Try to detect if all the files we're going to use are accessible in the mode we want them
   */

  if (FUNC25 (hashcat_ctx) == -1) return -1;

  /**
   * Init backend library loader
   */

  if (FUNC3 (hashcat_ctx) == -1) return -1;

  /**
   * Init backend devices
   */

  if (FUNC2 (hashcat_ctx, comptime) == -1) return -1;

  /**
   * HM devices: init
   */

  if (FUNC9 (hashcat_ctx) == -1) return -1;

  // done

  return 0;
}