
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int rm (int ) ;
 int rmlist ;

__attribute__((used)) static void interrupt(int n) {
 rm(rmlist);
 exit(n = 100);
}
