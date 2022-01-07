
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int i3_shmlog_header ;
struct TYPE_2__ {scalar_t__ wrap_count; int offset_last_wrap; } ;


 int STDOUT_FILENO ;
 TYPE_1__* header ;
 int logbuffer ;
 int swrite (int ,int,int const) ;
 int walk ;
 scalar_t__ wrap_count ;

__attribute__((used)) static int check_for_wrap(void) {
    if (wrap_count == header->wrap_count)
        return 0;



    wrap_count = header->wrap_count;
    const int len = (logbuffer + header->offset_last_wrap) - walk;
    swrite(STDOUT_FILENO, walk, len);
    walk = logbuffer + sizeof(i3_shmlog_header);
    return 1;
}
