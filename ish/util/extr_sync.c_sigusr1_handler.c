
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int should_unwind ;
 int siglongjmp (int ,int) ;
 int unwind_buf ;

void sigusr1_handler() {
    if (should_unwind) {
        should_unwind = 0;
        siglongjmp(unwind_buf, 1);
    }
}
