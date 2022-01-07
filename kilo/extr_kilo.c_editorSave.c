
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dirty; int filename; } ;


 TYPE_1__ E ;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 char* editorRowsToString (int*) ;
 int editorSetStatusMessage (char*,int) ;
 int errno ;
 int free (char*) ;
 int ftruncate (int,int) ;
 int open (int ,int,int) ;
 int strerror (int ) ;
 int write (int,char*,int) ;

int editorSave(void) {
    int len;
    char *buf = editorRowsToString(&len);
    int fd = open(E.filename,O_RDWR|O_CREAT,0644);
    if (fd == -1) goto writeerr;



    if (ftruncate(fd,len) == -1) goto writeerr;
    if (write(fd,buf,len) != len) goto writeerr;

    close(fd);
    free(buf);
    E.dirty = 0;
    editorSetStatusMessage("%d bytes written on disk", len);
    return 0;

writeerr:
    free(buf);
    if (fd != -1) close(fd);
    editorSetStatusMessage("Can't save! I/O error: %s",strerror(errno));
    return 1;
}
