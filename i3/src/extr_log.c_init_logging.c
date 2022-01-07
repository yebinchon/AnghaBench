
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL_HW ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int HW_MEMSIZE ;
 int _SC_PAGESIZE ;
 int _SC_PHYS_PAGES ;
 int atexit (int ) ;
 int close_logbuffer () ;
 int errno ;
 int errorfile ;
 char* errorfilename ;
 scalar_t__ fcntl (int ,int ,int ) ;
 int fileno (int ) ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 char* get_process_filename (char*) ;
 int * logbuffer ;
 int open_logbuffer () ;
 long long physical_mem_bytes ;
 int purge_zerobyte_logfile ;
 scalar_t__ shmlog_size ;
 int stderr ;
 char* strerror (int ) ;
 long long sysconf (int ) ;
 int sysctl (int*,int,long long*,size_t*,int *,int ) ;

void init_logging(void) {
    if (!errorfilename) {
        if (!(errorfilename = get_process_filename("errorlog")))
            fprintf(stderr, "Could not initialize errorlog\n");
        else {
            errorfile = fopen(errorfilename, "w");
            if (!errorfile) {
                fprintf(stderr, "Could not initialize errorlog on %s: %s\n",
                        errorfilename, strerror(errno));
            } else {
                if (fcntl(fileno(errorfile), F_SETFD, FD_CLOEXEC)) {
                    fprintf(stderr, "Could not set close-on-exec flag\n");
                }
            }
        }
    }
    if (physical_mem_bytes == 0) {





        physical_mem_bytes = (long long)sysconf(_SC_PHYS_PAGES) *
                             sysconf(_SC_PAGESIZE);

    }



    if (shmlog_size > 0 && logbuffer == ((void*)0))
        open_logbuffer();
    else if (shmlog_size <= 0 && logbuffer)
        close_logbuffer();
    atexit(purge_zerobyte_logfile);
}
