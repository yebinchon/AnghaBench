
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 int errorfilename ;
 int rmdir (int ) ;
 int stat (int ,struct stat*) ;
 char* strrchr (int ,char) ;
 int unlink (int ) ;

void purge_zerobyte_logfile(void) {
    struct stat st;
    char *slash;

    if (!errorfilename)
        return;


    if ((stat(errorfilename, &st)) == -1 || st.st_size > 0)
        return;

    if (unlink(errorfilename) == -1)
        return;

    if ((slash = strrchr(errorfilename, '/')) != ((void*)0)) {
        *slash = '\0';


        rmdir(errorfilename);
    }
}
