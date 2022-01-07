
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offset_next_write; } ;


 int STDOUT_FILENO ;
 int check_for_wrap () ;
 TYPE_1__* header ;
 int logbuffer ;
 int swrite (int ,int,int const) ;
 int walk ;

__attribute__((used)) static void print_till_end(void) {
    check_for_wrap();
    const int len = (logbuffer + header->offset_next_write) - walk;
    swrite(STDOUT_FILENO, walk, len);
    walk += len;
}
