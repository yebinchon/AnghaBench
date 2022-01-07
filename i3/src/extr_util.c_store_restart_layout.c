
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int yajl_gen ;
struct TYPE_2__ {int * restart_state_path; } ;


 int DEFAULT_DIR_MODE ;
 int DLOG (char*,...) ;
 int ELOG (char*,char*,...) ;
 int LC_NUMERIC ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IRUSR ;
 int S_IWUSR ;
 int close (int) ;
 TYPE_1__ config ;
 int croot ;
 char* dirname (char*) ;
 int dump_node (int ,int ,int) ;
 int errno ;
 int free (char*) ;
 int get_buf ;
 char* get_process_filename (char*) ;
 scalar_t__ mkdirp (char*,int ) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 char* resolve_tilde (int *) ;
 int setlocale (int ,char*) ;
 char* sstrdup (char*) ;
 int strerror (int ) ;
 int writeall (int,unsigned char const*,size_t) ;
 int y (int (*) (char*),...) ;
 int yajl_gen_alloc (int *) ;

__attribute__((used)) static char *store_restart_layout(void) {
    setlocale(LC_NUMERIC, "C");
    yajl_gen gen = yajl_gen_alloc(((void*)0));

    dump_node(gen, croot, 1);

    setlocale(LC_NUMERIC, "");

    const unsigned char *payload;
    size_t length;
    y(get_buf, &payload, &length);



    char *filename;
    if (config.restart_state_path == ((void*)0)) {
        filename = get_process_filename("restart-state");
        if (!filename)
            return ((void*)0);
    } else {
        filename = resolve_tilde(config.restart_state_path);
    }



    char *filenamecopy = sstrdup(filename);
    char *base = dirname(filenamecopy);
    DLOG("Creating \"%s\" for storing the restart layout\n", base);
    if (mkdirp(base, DEFAULT_DIR_MODE) != 0)
        ELOG("Could not create \"%s\" for storing the restart layout, layout will be lost.\n", base);
    free(filenamecopy);

    int fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        perror("open()");
        free(filename);
        return ((void*)0);
    }

    if (writeall(fd, payload, length) == -1) {
        ELOG("Could not write restart layout to \"%s\", layout will be lost: %s\n", filename, strerror(errno));
        free(filename);
        close(fd);
        return ((void*)0);
    }

    close(fd);

    if (length > 0) {
        DLOG("layout: %.*s\n", (int)length, payload);
    }

    y(free);

    return filename;
}
