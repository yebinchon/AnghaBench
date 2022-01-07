
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int off_t ;


 int FREE (char*) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int close (int) ;
 int dup2 (int,int) ;
 int exec_i3_utility (char*,char**) ;
 int fork () ;
 int fprintf (int ,char*) ;
 scalar_t__ pipe (int*) ;
 int read (int,char*,int) ;
 char* scalloc (int,int) ;
 char* srealloc (char*,int) ;
 int stderr ;
 int wait (int*) ;
 int warn (char*) ;
 int writeall (int,char*,int ) ;

__attribute__((used)) static char *migrate_config(char *input, off_t size) {
    int writepipe[2];
    int readpipe[2];

    if (pipe(writepipe) != 0 ||
        pipe(readpipe) != 0) {
        warn("migrate_config: Could not create pipes");
        return ((void*)0);
    }

    pid_t pid = fork();
    if (pid == -1) {
        warn("Could not fork()");
        return ((void*)0);
    }


    if (pid == 0) {

        close(writepipe[1]);
        dup2(writepipe[0], 0);


        close(readpipe[0]);
        dup2(readpipe[1], 1);

        static char *argv[] = {
            ((void*)0),
            ((void*)0)};
        exec_i3_utility("i3-migrate-config-to-v4", argv);
    }




    close(writepipe[0]);



    if (writeall(writepipe[1], input, size) == -1) {
        warn("Could not write to pipe");
        return ((void*)0);
    }
    close(writepipe[1]);


    close(readpipe[1]);


    int conv_size = 65535;
    char *converted = scalloc(conv_size, 1);
    int read_bytes = 0, ret;
    do {
        if (read_bytes == conv_size) {
            conv_size += 65535;
            converted = srealloc(converted, conv_size);
        }
        ret = read(readpipe[0], converted + read_bytes, conv_size - read_bytes);
        if (ret == -1) {
            warn("Cannot read from pipe");
            FREE(converted);
            return ((void*)0);
        }
        read_bytes += ret;
    } while (ret > 0);


    int status;
    wait(&status);
    if (!WIFEXITED(status)) {
        fprintf(stderr, "Child did not terminate normally, using old config file (will lead to broken behaviour)\n");
        FREE(converted);
        return ((void*)0);
    }

    int returncode = WEXITSTATUS(status);
    if (returncode != 0) {
        fprintf(stderr, "Migration process exit code was != 0\n");
        if (returncode == 2) {
            fprintf(stderr, "could not start the migration script\n");

        } else if (returncode == 1) {
            fprintf(stderr, "This already was a v4 config. Please add the following line to your config file:\n");
            fprintf(stderr, "# i3 config file (v4)\n");

        }
        FREE(converted);
        return ((void*)0);
    }

    return converted;
}
