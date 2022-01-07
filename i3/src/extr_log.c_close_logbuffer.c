
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int free (char*) ;
 int * logbuffer ;
 int logbuffer_shm ;
 int shm_unlink (char*) ;
 char* shmlogname ;

void close_logbuffer(void) {
    close(logbuffer_shm);
    shm_unlink(shmlogname);
    free(shmlogname);
    logbuffer = ((void*)0);
    shmlogname = "";
}
