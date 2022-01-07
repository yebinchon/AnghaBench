
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {char* filename; scalar_t__ dirty; int numrows; } ;
typedef int FILE ;


 TYPE_1__ E ;
 scalar_t__ ENOENT ;
 int editorInsertRow (int ,char*,int) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int perror (char*) ;
 char* strdup (char*) ;

int editorOpen(char *filename) {
    FILE *fp;

    E.dirty = 0;
    free(E.filename);
    E.filename = strdup(filename);

    fp = fopen(filename,"r");
    if (!fp) {
        if (errno != ENOENT) {
            perror("Opening file");
            exit(1);
        }
        return 1;
    }

    char *line = ((void*)0);
    size_t linecap = 0;
    ssize_t linelen;
    while((linelen = getline(&line,&linecap,fp)) != -1) {
        if (linelen && (line[linelen-1] == '\n' || line[linelen-1] == '\r'))
            line[--linelen] = '\0';
        editorInsertRow(E.numrows,line,linelen);
    }
    free(line);
    fclose(fp);
    E.dirty = 0;
    return 0;
}
