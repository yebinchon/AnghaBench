
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fake_abort_called ;

void fake_abort(const char *message) {
 (void)message;
 fake_abort_called = 1;
}
