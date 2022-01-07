
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 scalar_t__ rtas_token (char const*) ;

int rtas_service_present(const char *service)
{
 return rtas_token(service) != RTAS_UNKNOWN_SERVICE;
}
