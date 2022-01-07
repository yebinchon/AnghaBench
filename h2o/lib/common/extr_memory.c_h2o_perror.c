
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int errno ;
 int h2o_error_printf (char*,char const*,int ) ;
 int h2o_strerror_r (int ,char*,int) ;

void h2o_perror(const char *msg)
{
    char buf[128];

    h2o_error_printf("%s: %s\n", msg, h2o_strerror_r(errno, buf, sizeof(buf)));
}
