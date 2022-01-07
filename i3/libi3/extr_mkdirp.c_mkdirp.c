
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 scalar_t__ EEXIST ;
 int ELOG (char*,char const*,int ) ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int S_ISDIR (int ) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ mkdir (char const*,int ) ;
 char* sstrdup (char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strerror (scalar_t__) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

int mkdirp(const char *path, mode_t mode) {
    if (mkdir(path, mode) == 0)
        return 0;
    if (errno == EEXIST) {
        struct stat st;

        if (stat(path, &st)) {
            ELOG("stat(%s) failed: %s\n", path, strerror(errno));
            return -1;
        }
        if (!S_ISDIR(st.st_mode)) {
            ELOG("mkdir(%s) failed: %s\n", path, strerror(ENOTDIR));
            return -1;
        }
        return 0;
    } else if (errno != ENOENT) {
        ELOG("mkdir(%s) failed: %s\n", path, strerror(errno));
        return -1;
    }
    char *copy = sstrdup(path);

    while (copy[strlen(copy) - 1] == '/')
        copy[strlen(copy) - 1] = '\0';

    char *sep = strrchr(copy, '/');
    if (sep == ((void*)0)) {
        free(copy);
        return -1;
    }
    *sep = '\0';
    int result = -1;
    if (mkdirp(copy, mode) == 0)
        result = mkdirp(path, mode);
    free(copy);

    return result;
}
