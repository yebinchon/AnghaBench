
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ev_timer {int * data; } ;
struct Startup_Sequence {int * context; void* workspace; void* id; } ;
struct TYPE_3__ {char const* name; } ;
typedef int SnLauncherContext ;
typedef TYPE_1__ Con ;


 int LOG (char*,char const*) ;
 int RLIMIT_CORE ;
 int SD_LISTEN_FDS_START ;
 int SIGPIPE ;
 int SIG_DFL ;
 int TAILQ_INSERT_TAIL (int *,struct Startup_Sequence*,int ) ;
 int XCURSOR_CURSOR_WATCH ;
 int _PATH_BSHELL ;
 int _exit (int ) ;
 int close (int) ;
 TYPE_1__* con_get_workspace (int ) ;
 int conn_screen ;
 int current_socketpath ;
 int ev_timer_init (struct ev_timer*,int ,double,int) ;
 int ev_timer_start (int ,struct ev_timer*) ;
 int execl (int ,int ,char*,char const*,int *) ;
 int focused ;
 scalar_t__ fork () ;
 int free (char*) ;
 int last_timestamp ;
 int listen_fds ;
 int main_loop ;
 int original_rlimit_core ;
 void* scalloc (int,int) ;
 int sequences ;
 int setenv (char*,int ,int) ;
 int setrlimit (int ,int *) ;
 int setsid () ;
 int signal (int ,int ) ;
 char const* sn_launcher_context_get_startup_id (int *) ;
 int sn_launcher_context_initiate (int *,char*,char*,int ) ;
 int * sn_launcher_context_new (int ,int ) ;
 int sn_launcher_context_ref (int *) ;
 int sn_launcher_context_set_description (int *,char*) ;
 int sn_launcher_context_set_name (int *,char*) ;
 int sn_launcher_context_setup_child_process (int *) ;
 int sndisplay ;
 void* sstrdup (char const*) ;
 int startup_sequences ;
 int startup_timeout ;
 char* strchr (char*,char) ;
 int unsetenv (char*) ;
 int wait (int ) ;
 int xcb_set_root_cursor (int ) ;
 int xcursor_set_root_cursor (int ) ;
 scalar_t__ xcursor_supported ;

void start_application(const char *command, bool no_startup_id) {
    SnLauncherContext *context = ((void*)0);

    if (!no_startup_id) {


        context = sn_launcher_context_new(sndisplay, conn_screen);
        sn_launcher_context_set_name(context, "i3");
        sn_launcher_context_set_description(context, "exec command in i3");


        char *first_word = sstrdup(command);
        char *space = strchr(first_word, ' ');
        if (space)
            *space = '\0';
        sn_launcher_context_initiate(context, "i3", first_word, last_timestamp);
        free(first_word);


        struct ev_timer *timeout = scalloc(1, sizeof(struct ev_timer));
        ev_timer_init(timeout, startup_timeout, 60.0, 0.);
        timeout->data = context;
        ev_timer_start(main_loop, timeout);

        LOG("startup id = %s\n", sn_launcher_context_get_startup_id(context));



        Con *ws = con_get_workspace(focused);
        struct Startup_Sequence *sequence = scalloc(1, sizeof(struct Startup_Sequence));
        sequence->id = sstrdup(sn_launcher_context_get_startup_id(context));
        sequence->workspace = sstrdup(ws->name);
        sequence->context = context;
        TAILQ_INSERT_TAIL(&startup_sequences, sequence, sequences);




        sn_launcher_context_ref(context);
    }

    LOG("executing: %s\n", command);
    if (fork() == 0) {

        setsid();
        setrlimit(RLIMIT_CORE, &original_rlimit_core);


        for (int fd = SD_LISTEN_FDS_START;
             fd < (SD_LISTEN_FDS_START + listen_fds);
             fd++) {
            close(fd);
        }
        unsetenv("LISTEN_PID");
        unsetenv("LISTEN_FDS");
        signal(SIGPIPE, SIG_DFL);
        if (fork() == 0) {

            if (!no_startup_id)
                sn_launcher_context_setup_child_process(context);
            setenv("I3SOCK", current_socketpath, 1);

            execl(_PATH_BSHELL, _PATH_BSHELL, "-c", command, ((void*)0));

        }
        _exit(0);
    }
    wait(0);

    if (!no_startup_id) {

        if (xcursor_supported)
            xcursor_set_root_cursor(XCURSOR_CURSOR_WATCH);
        else
            xcb_set_root_cursor(XCURSOR_CURSOR_WATCH);
    }
}
