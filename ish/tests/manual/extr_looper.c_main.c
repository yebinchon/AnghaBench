
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nop () ;
 int printf (char*,...) ;

int main() {
    int loops = 100000000;
    printf("looping %d times\n", loops);
    for (int i = 0; i < loops; i++)
        nop();
    printf("done looping\n");
}
