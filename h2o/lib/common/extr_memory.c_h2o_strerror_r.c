
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strerror_r (int,char*,size_t) ;

char *h2o_strerror_r(int err, char *buf, size_t len)
{

    strerror_r(err, buf, len);
    return buf;
}
