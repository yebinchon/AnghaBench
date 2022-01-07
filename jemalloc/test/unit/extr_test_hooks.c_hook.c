
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hook_called ;

__attribute__((used)) static void
hook() {
 hook_called = 1;
}
