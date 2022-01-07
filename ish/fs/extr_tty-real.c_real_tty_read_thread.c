
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int SIGINT ;
 int STDIN_FILENO ;
 int errno ;
 int printk (char*,int) ;
 int raise (int ) ;
 int read (int ,char*,int) ;
 int strerror (int ) ;
 int tty_input (struct tty*,char*,int,int ) ;

__attribute__((used)) static void real_tty_read_thread(struct tty *tty) {
    char ch;
    for (;;) {
        int err = read(STDIN_FILENO, &ch, 1);
        if (err != 1) {
            printk("tty read returned %d\n", err);
            if (err < 0)
                printk("error: %s\n", strerror(errno));
            continue;
        }
        if (ch == '\x1c') {

            raise(SIGINT);
        }
        tty_input(tty, &ch, 1, 0);
    }
}
