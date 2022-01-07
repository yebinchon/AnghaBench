
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ yajl_status ;
typedef int yajl_handle ;
typedef char uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct stat {int st_mtime; } ;
typedef int ssize_t ;
typedef int mtime ;
typedef int destpath ;


 int ELOG (char*,char*) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ I3_IPC_MESSAGE_TYPE_GET_VERSION ;
 int O_RDONLY ;
 int close (int) ;
 int conn ;
 int conn_screen ;
 double difftime (int ,int ) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,int,char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int * getenv (char*) ;
 char* getpid () ;
 char* human_readable_version ;
 int ipc_connect (int *) ;
 int ipc_recv_message (int,scalar_t__*,scalar_t__*,char**) ;
 int ipc_send_message (int,int ,scalar_t__,char*) ;
 char* loaded_config_file_name ;
 int localtime (int *) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int read (int,char*,int) ;
 int readlink (char*,char*,size_t) ;
 char* root_atom_contents (char*,int ,int ) ;
 int sasprintf (char**,char*,char*) ;
 char* smalloc (size_t) ;
 char* srealloc (char*,size_t) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int stdout ;
 int strftime (char*,int,char*,int ) ;
 int * strstr (char*,char*) ;
 int time (int *) ;
 int version_callbacks ;
 int yajl_alloc (int *,int *,int *) ;
 int yajl_free (int ) ;
 scalar_t__ yajl_parse (int ,unsigned char const*,int) ;
 scalar_t__ yajl_status_ok ;

void display_running_version(void) {
    if (getenv("DISPLAY") == ((void*)0)) {
        fprintf(stderr, "\nYour DISPLAY environment variable is not set.\n");
        fprintf(stderr, "Are you running i3 via SSH or on a virtual console?\n");
        fprintf(stderr, "Try DISPLAY=:0 i3 --moreversion\n");
        exit(EXIT_FAILURE);
    }

    char *pid_from_atom = root_atom_contents("I3_PID", conn, conn_screen);
    if (pid_from_atom == ((void*)0)) {

        printf("\nRunning version: < 4.2-200\n");
        exit(EXIT_SUCCESS);
    }



    printf("(Getting version from running i3, press ctrl-c to abort…)");
    fflush(stdout);

    int sockfd = ipc_connect(((void*)0));
    if (ipc_send_message(sockfd, 0, I3_IPC_MESSAGE_TYPE_GET_VERSION,
                         (uint8_t *)"") == -1)
        err(EXIT_FAILURE, "IPC: write()");

    uint32_t reply_length;
    uint32_t reply_type;
    uint8_t *reply;
    int ret;
    if ((ret = ipc_recv_message(sockfd, &reply_type, &reply_length, &reply)) != 0) {
        if (ret == -1)
            err(EXIT_FAILURE, "IPC: read()");
        exit(EXIT_FAILURE);
    }

    if (reply_type != I3_IPC_MESSAGE_TYPE_GET_VERSION)
        errx(EXIT_FAILURE, "Got reply type %d, but expected %d (GET_VERSION)", reply_type, I3_IPC_MESSAGE_TYPE_GET_VERSION);

    yajl_handle handle = yajl_alloc(&version_callbacks, ((void*)0), ((void*)0));

    yajl_status state = yajl_parse(handle, (const unsigned char *)reply, (int)reply_length);
    if (state != yajl_status_ok)
        errx(EXIT_FAILURE, "Could not parse my own reply. That's weird. reply is %.*s", (int)reply_length, reply);

    printf("\rRunning i3 version: %s (pid %s)\n", human_readable_version, pid_from_atom);

    if (loaded_config_file_name) {
        struct stat sb;
        time_t now;
        char mtime[64];
        printf("Loaded i3 config: %s", loaded_config_file_name);
        if (stat(loaded_config_file_name, &sb) == -1) {
            printf("\n");
            ELOG("Cannot stat config file \"%s\"\n", loaded_config_file_name);
        } else {
            strftime(mtime, sizeof(mtime), "%c", localtime(&(sb.st_mtime)));
            time(&now);
            printf(" (Last modified: %s, %.f seconds ago)\n", mtime, difftime(now, sb.st_mtime));
        }
    }


    size_t destpath_size = 1024;
    ssize_t linksize;
    char *exepath;
    char *destpath = smalloc(destpath_size);

    sasprintf(&exepath, "/proc/%d/exe", getpid());

    while ((linksize = readlink(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = srealloc(destpath, destpath_size);
    }
    if (linksize == -1)
        err(EXIT_FAILURE, "readlink(%s)", exepath);


    destpath[linksize] = '\0';

    printf("\n");
    printf("The i3 binary you just called: %s\n", destpath);

    free(exepath);
    sasprintf(&exepath, "/proc/%s/exe", pid_from_atom);

    while ((linksize = readlink(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = srealloc(destpath, destpath_size);
    }
    if (linksize == -1)
        err(EXIT_FAILURE, "readlink(%s)", exepath);


    destpath[linksize] = '\0';



    if (strstr(destpath, "(deleted)") != ((void*)0))
        printf("RUNNING BINARY DIFFERENT FROM BINARY ON DISK!\n");




    free(exepath);
    sasprintf(&exepath, "/proc/%s/cmdline", pid_from_atom);

    int fd;
    if ((fd = open(exepath, O_RDONLY)) == -1)
        err(EXIT_FAILURE, "open(%s)", exepath);
    if (read(fd, destpath, sizeof(destpath)) == -1)
        err(EXIT_FAILURE, "read(%s)", exepath);
    close(fd);

    printf("The i3 binary you are running: %s\n", destpath);

    free(exepath);
    free(destpath);


    yajl_free(handle);
    free(reply);
    free(pid_from_atom);
}
