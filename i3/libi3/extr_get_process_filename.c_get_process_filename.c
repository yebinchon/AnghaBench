
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct passwd {char* pw_name; } ;


 int EXIT_FAILURE ;
 int errx (int ,char*,char*) ;
 char* getenv (char*) ;
 int getpid () ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int mkdir (char*,int) ;
 int * mkdtemp (char*) ;
 int perror (char*) ;
 int sasprintf (char**,char*,char const*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int warn (char*,char*) ;

char *get_process_filename(const char *prefix) {


    static char *dir = ((void*)0);
    if (dir == ((void*)0)) {

        if ((dir = getenv("XDG_RUNTIME_DIR"))) {
            char *tmp;
            sasprintf(&tmp, "%s/i3", dir);
            dir = tmp;
            struct stat buf;
            if (stat(dir, &buf) != 0) {
                if (mkdir(dir, 0700) == -1) {
                    warn("Could not mkdir(%s)", dir);
                    errx(EXIT_FAILURE, "Check permissions of $XDG_RUNTIME_DIR = '%s'",
                         getenv("XDG_RUNTIME_DIR"));
                    perror("mkdir()");
                    return ((void*)0);
                }
            }
        } else {


            struct passwd *pw = getpwuid(getuid());
            const char *username = pw ? pw->pw_name : "unknown";
            sasprintf(&dir, "/tmp/i3-%s.XXXXXX", username);

            if (mkdtemp(dir) == ((void*)0)) {
                perror("mkdtemp()");
                return ((void*)0);
            }
        }
    }
    char *filename;
    sasprintf(&filename, "%s/%s.%d", dir, prefix, getpid());
    return filename;
}
