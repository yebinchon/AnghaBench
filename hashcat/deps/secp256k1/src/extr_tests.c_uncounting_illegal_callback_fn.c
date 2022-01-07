
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void uncounting_illegal_callback_fn(const char* str, void* data) {

    int32_t *p;
    (void)str;
    p = data;
    (*p)--;
}
