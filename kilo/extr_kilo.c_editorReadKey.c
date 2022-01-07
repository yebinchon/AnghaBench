
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARROW_DOWN ;
 int ARROW_LEFT ;
 int ARROW_RIGHT ;
 int ARROW_UP ;
 int DEL_KEY ;
 int END_KEY ;

 int HOME_KEY ;
 int PAGE_DOWN ;
 int PAGE_UP ;
 int exit (int) ;
 int read (int,char*,int) ;

int editorReadKey(int fd) {
    int nread;
    char c, seq[3];
    while ((nread = read(fd,&c,1)) == 0);
    if (nread == -1) exit(1);

    while(1) {
        switch(c) {
        case 128:

            if (read(fd,seq,1) == 0) return 128;
            if (read(fd,seq+1,1) == 0) return 128;


            if (seq[0] == '[') {
                if (seq[1] >= '0' && seq[1] <= '9') {

                    if (read(fd,seq+2,1) == 0) return 128;
                    if (seq[2] == '~') {
                        switch(seq[1]) {
                        case '3': return DEL_KEY;
                        case '5': return PAGE_UP;
                        case '6': return PAGE_DOWN;
                        }
                    }
                } else {
                    switch(seq[1]) {
                    case 'A': return ARROW_UP;
                    case 'B': return ARROW_DOWN;
                    case 'C': return ARROW_RIGHT;
                    case 'D': return ARROW_LEFT;
                    case 'H': return HOME_KEY;
                    case 'F': return END_KEY;
                    }
                }
            }


            else if (seq[0] == 'O') {
                switch(seq[1]) {
                case 'H': return HOME_KEY;
                case 'F': return END_KEY;
                }
            }
            break;
        default:
            return c;
        }
    }
}
