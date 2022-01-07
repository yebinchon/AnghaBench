
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int __be32 ;
struct TYPE_2__ {int * dev; } ;


 int RTAS_UNKNOWN_SERVICE ;
 int be32_to_cpu (int const) ;
 int * of_get_property (int *,char const*,int *) ;
 TYPE_1__ rtas ;

int rtas_token(const char *service)
{
 const __be32 *tokp;
 if (rtas.dev == ((void*)0))
  return RTAS_UNKNOWN_SERVICE;
 tokp = of_get_property(rtas.dev, service, ((void*)0));
 return tokp ? be32_to_cpu(*tokp) : RTAS_UNKNOWN_SERVICE;
}
