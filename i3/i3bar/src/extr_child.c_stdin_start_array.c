
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_statusline (int *,int) ;
 int statusline_buffer ;

__attribute__((used)) static int stdin_start_array(void *context) {


    clear_statusline(&statusline_buffer, 0);
    return 1;
}
