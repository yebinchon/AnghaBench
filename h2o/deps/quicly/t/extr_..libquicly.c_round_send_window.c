
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int MIN_SEND_WINDOW ;

__attribute__((used)) static ssize_t round_send_window(ssize_t window)
{
    if (window < MIN_SEND_WINDOW * 2) {
        if (window < MIN_SEND_WINDOW) {
            return 0;
        } else {
            return MIN_SEND_WINDOW * 2;
        }
    }
    return window;
}
