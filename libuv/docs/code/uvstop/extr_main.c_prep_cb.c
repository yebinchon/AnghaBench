
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;


 int printf (char*) ;

void prep_cb(uv_prepare_t *handle) {
    printf("Prep callback\n");
}
