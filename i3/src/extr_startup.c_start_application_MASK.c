#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ev_timer {int /*<<< orphan*/ * data; } ;
struct Startup_Sequence {int /*<<< orphan*/ * context; void* workspace; void* id; } ;
struct TYPE_3__ {char const* name; } ;
typedef  int /*<<< orphan*/  SnLauncherContext ;
typedef  TYPE_1__ Con ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  RLIMIT_CORE ; 
 int SD_LISTEN_FDS_START ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct Startup_Sequence*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XCURSOR_CURSOR_WATCH ; 
 int /*<<< orphan*/  _PATH_BSHELL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_screen ; 
 int /*<<< orphan*/  current_socketpath ; 
 int /*<<< orphan*/  FUNC5 (struct ev_timer*,int /*<<< orphan*/ ,double,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ev_timer*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  focused ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  last_timestamp ; 
 int listen_fds ; 
 int /*<<< orphan*/  main_loop ; 
 int /*<<< orphan*/  original_rlimit_core ; 
 void* FUNC10 (int,int) ; 
 int /*<<< orphan*/  sequences ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sndisplay ; 
 void* FUNC22 (char const*) ; 
 int /*<<< orphan*/  startup_sequences ; 
 int /*<<< orphan*/  startup_timeout ; 
 char* FUNC23 (char*,char) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 scalar_t__ xcursor_supported ; 

void FUNC28(const char *command, bool no_startup_id) {
    SnLauncherContext *context = NULL;

    if (!no_startup_id) {
        /* Create a startup notification context to monitor the progress of this
         * startup. */
        context = FUNC17(sndisplay, conn_screen);
        FUNC20(context, "i3");
        FUNC19(context, "exec command in i3");
        /* Chop off everything starting from the first space (if there are any
         * spaces in the command), since we don’t want the parameters. */
        char *first_word = FUNC22(command);
        char *space = FUNC23(first_word, ' ');
        if (space)
            *space = '\0';
        FUNC16(context, "i3", first_word, last_timestamp);
        FUNC9(first_word);

        /* Trigger a timeout after 60 seconds */
        struct ev_timer *timeout = FUNC10(1, sizeof(struct ev_timer));
        FUNC5(timeout, startup_timeout, 60.0, 0.);
        timeout->data = context;
        FUNC6(main_loop, timeout);

        FUNC0("startup id = %s\n", FUNC15(context));

        /* Save the ID and current workspace in our internal list of startup
         * sequences */
        Con *ws = FUNC4(focused);
        struct Startup_Sequence *sequence = FUNC10(1, sizeof(struct Startup_Sequence));
        sequence->id = FUNC22(FUNC15(context));
        sequence->workspace = FUNC22(ws->name);
        sequence->context = context;
        FUNC1(&startup_sequences, sequence, sequences);

        /* Increase the refcount once (it starts with 1, so it will be 2 now) for
         * the timeout. Even if the sequence gets completed, the timeout still
         * needs the context (but will unref it then) */
        FUNC18(context);
    }

    FUNC0("executing: %s\n", command);
    if (FUNC8() == 0) {
        /* Child process */
        FUNC13();
        FUNC12(RLIMIT_CORE, &original_rlimit_core);
        /* Close all socket activation file descriptors explicitly, we disabled
         * FD_CLOEXEC to keep them open when restarting i3. */
        for (int fd = SD_LISTEN_FDS_START;
             fd < (SD_LISTEN_FDS_START + listen_fds);
             fd++) {
            FUNC3(fd);
        }
        FUNC24("LISTEN_PID");
        FUNC24("LISTEN_FDS");
        FUNC14(SIGPIPE, SIG_DFL);
        if (FUNC8() == 0) {
            /* Setup the environment variable(s) */
            if (!no_startup_id)
                FUNC21(context);
            FUNC11("I3SOCK", current_socketpath, 1);

            FUNC7(_PATH_BSHELL, _PATH_BSHELL, "-c", command, NULL);
            /* not reached */
        }
        FUNC2(0);
    }
    FUNC25(0);

    if (!no_startup_id) {
        /* Change the pointer of the root window to indicate progress */
        if (xcursor_supported)
            FUNC27(XCURSOR_CURSOR_WATCH);
        else
            FUNC26(XCURSOR_CURSOR_WATCH);
    }
}