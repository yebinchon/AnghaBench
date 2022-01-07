
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uc_err ;


 scalar_t__ UC_ERR_OK ;
 int exit (int) ;
 int printf (char*,char const*,char*) ;
 char* uc_strerror (scalar_t__) ;

void uc_trycall(uc_err res, const char *msg) {
    if (res != UC_ERR_OK) {
        printf("%s: %s\r\n", msg, uc_strerror(res));
        exit(1);
    }
}
