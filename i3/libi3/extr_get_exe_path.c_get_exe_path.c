
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ ERANGE ;
 int X_OK ;
 int _CS_PATH ;
 scalar_t__ access (char*,int ) ;
 size_t confstr (int ,char*,size_t) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* getcwd (char*,size_t) ;
 char* getenv (char*) ;
 int readlink (char const*,char*,size_t) ;
 int sasprintf (char**,char*,char const*,...) ;
 char* smalloc (size_t) ;
 char* srealloc (char*,size_t) ;
 char* sstrdup (char const*) ;
 int * strchr (char const*,char) ;
 char* strtok (char*,char*) ;

char *get_exe_path(const char *argv0) {
    size_t destpath_size = 1024;
    size_t tmp_size = 1024;
    char *destpath = smalloc(destpath_size);
    char *tmp = smalloc(tmp_size);




    const char *exepath = "/proc/self/exe";



    ssize_t linksize;

    while ((linksize = readlink(exepath, destpath, destpath_size)) == (ssize_t)destpath_size) {
        destpath_size = destpath_size * 2;
        destpath = srealloc(destpath, destpath_size);
    }
    if (linksize != -1) {

        destpath[linksize] = '\0';
        free(tmp);
        return destpath;
    }



    if (argv0[0] == '/') {
        free(tmp);
        free(destpath);
        return sstrdup(argv0);
    }


    if (strchr(argv0, '/') != ((void*)0)) {
        char *retgcwd;
        while ((retgcwd = getcwd(tmp, tmp_size)) == ((void*)0) && errno == ERANGE) {
            tmp_size = tmp_size * 2;
            tmp = srealloc(tmp, tmp_size);
        }
        if (retgcwd != ((void*)0)) {
            free(destpath);
            sasprintf(&destpath, "%s/%s", tmp, argv0);
            free(tmp);
            return destpath;
        }
    }


    char *path = getenv("PATH");
    if (path == ((void*)0)) {

        while (confstr(_CS_PATH, tmp, tmp_size) > tmp_size) {
            tmp_size = tmp_size * 2;
            tmp = srealloc(tmp, tmp_size);
        }
        sasprintf(&path, ":%s", tmp);
    } else {
        path = sstrdup(path);
    }
    const char *component;
    char *str = path;
    while (1) {
        if ((component = strtok(str, ":")) == ((void*)0))
            break;
        str = ((void*)0);
        free(destpath);
        sasprintf(&destpath, "%s/%s", component, argv0);


        if (access(destpath, X_OK) == 0) {
            free(path);
            free(tmp);
            return destpath;
        }
    }
    free(destpath);
    free(path);
    free(tmp);


    return sstrdup("/usr/bin/i3-nagbar");
}
