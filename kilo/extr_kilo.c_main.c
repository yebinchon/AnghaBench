
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int editorOpen (char*) ;
 int editorProcessKeypress (int ) ;
 int editorRefreshScreen () ;
 int editorSelectSyntaxHighlight (char*) ;
 int editorSetStatusMessage (char*) ;
 int enableRawMode (int ) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int initEditor () ;
 int stderr ;

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr,"Usage: kilo <filename>\n");
        exit(1);
    }

    initEditor();
    editorSelectSyntaxHighlight(argv[1]);
    editorOpen(argv[1]);
    enableRawMode(STDIN_FILENO);
    editorSetStatusMessage(
        "HELP: Ctrl-S = save | Ctrl-Q = quit | Ctrl-F = find");
    while(1) {
        editorRefreshScreen();
        editorProcessKeypress(STDIN_FILENO);
    }
    return 0;
}
