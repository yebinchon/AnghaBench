
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDIN_FILENO ;
 int disableRawMode (int ) ;

void editorAtExit(void) {
    disableRawMode(STDIN_FILENO);
}
