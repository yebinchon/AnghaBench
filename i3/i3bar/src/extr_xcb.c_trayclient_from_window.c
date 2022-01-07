
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xcb_window_t ;
typedef int trayclient ;


 int * trayclient_and_output_from_window (int ,int *) ;

__attribute__((used)) static trayclient *trayclient_from_window(xcb_window_t win) {
    return trayclient_and_output_from_window(win, ((void*)0));
}
