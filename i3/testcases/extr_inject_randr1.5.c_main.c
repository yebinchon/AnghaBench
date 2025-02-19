
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {char* sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct option {char* member_0; char* name; int member_3; int member_2; int const member_1; } ;
struct ev_loop {int dummy; } ;
typedef int pid_t ;
typedef int ev_io ;
typedef int ev_child ;


 int AF_LOCAL ;
 int AF_UNIX ;
 int EV_READ ;
 int EXIT_FAILURE ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SOCK_STREAM ;
 int atexit (int ) ;
 int bind (int,struct sockaddr*,int) ;
 int child_cb ;
 int cleanup_socket ;
 int err (int ,char*) ;
 int errx (int ,char*,char*) ;
 int ev_child_init (int *,int ,int,int ) ;
 int ev_child_start (struct ev_loop*,int *) ;
 struct ev_loop* ev_default_loop (int ) ;
 int ev_io_init (int *,int ,int,int ) ;
 int ev_io_start (struct ev_loop*,int *) ;
 int ev_run (struct ev_loop*,int ) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 scalar_t__ fcntl (int,int ,int ) ;
 int fork () ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int getmonitors_reply ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 int getoutputinfo_reply ;
 int listen (int,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int must_read_reply (int ,int *) ;
 int optarg ;
 int optind ;

 int sasprintf (char**,char*,int) ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int sstrdup (char*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int sun_path ;
 int uds_connection_cb ;
 int warn (char*,...) ;

int main(int argc, char *argv[]) {
    static struct option long_options[] = {
        {"getmonitors_reply", 128, 0, 0},
        {"getoutputinfo_reply", 128, 0, 0},
        {0, 0, 0, 0},
    };
    char *options_string = "";
    int opt;
    int option_index = 0;

    while ((opt = getopt_long(argc, argv, options_string, long_options, &option_index)) != -1) {
        switch (opt) {
            case 0: {
                const char *option_name = long_options[option_index].name;
                if (strcmp(option_name, "getmonitors_reply") == 0) {
                    must_read_reply(optarg, &getmonitors_reply);
                } else if (strcmp(option_name, "getoutputinfo_reply") == 0) {
                    must_read_reply(optarg, &getoutputinfo_reply);
                }
                break;
            }
            default:
                exit(EXIT_FAILURE);
        }
    }

    if (optind >= argc) {
        errx(EXIT_FAILURE, "syntax: %s [options] <command>", argv[0]);
    }

    int fd = socket(AF_LOCAL, SOCK_STREAM, 0);
    if (fd == -1) {
        err(EXIT_FAILURE, "socket(AF_UNIX)");
    }

    if (fcntl(fd, F_SETFD, FD_CLOEXEC)) {
        warn("Could not set FD_CLOEXEC");
    }

    struct sockaddr_un addr;
    memset(&addr, 0, sizeof(struct sockaddr_un));
    addr.sun_family = AF_UNIX;
    int i;
    bool bound = 0;
    for (i = 0; i < 100; i++) {



        snprintf(addr.sun_path, sizeof(addr.sun_path), "/tmp/.X11-unix/X%d", i);

        if (bind(fd, (struct sockaddr *)&addr, sizeof(struct sockaddr_un)) == -1) {
            warn("bind(%s)", addr.sun_path);
        } else {
            bound = 1;


            fprintf(stderr, "Successfuly bound to %s\n", addr.sun_path);
            sun_path = sstrdup(addr.sun_path);
            break;
        }
    }

    if (!bound) {
        err(EXIT_FAILURE, "bind()");
    }

    atexit(cleanup_socket);



    if (listen(fd, 1) == -1) {
        err(EXIT_FAILURE, "listen()");
    }

    pid_t child = fork();
    if (child == -1) {
        err(EXIT_FAILURE, "fork()");
    }
    if (child == 0) {
        char *display;
        sasprintf(&display, ":%d", i);
        setenv("DISPLAY", display, 1);
        free(display);

        char **child_args = argv + optind;
        execvp(child_args[0], child_args);
        err(EXIT_FAILURE, "exec()");
    }

    struct ev_loop *loop = ev_default_loop(0);

    ev_child cw;
    ev_child_init(&cw, child_cb, child, 0);
    ev_child_start(loop, &cw);

    ev_io watcher;
    ev_io_init(&watcher, uds_connection_cb, fd, EV_READ);
    ev_io_start(loop, &watcher);

    ev_run(loop, 0);
}
