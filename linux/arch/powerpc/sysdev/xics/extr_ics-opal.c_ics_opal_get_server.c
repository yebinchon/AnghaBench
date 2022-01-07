
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics {int dummy; } ;
typedef int int8_t ;
typedef scalar_t__ int64_t ;
typedef int __be16 ;


 scalar_t__ OPAL_SUCCESS ;
 int be16_to_cpu (int ) ;
 long ics_opal_unmangle_server (int ) ;
 scalar_t__ opal_get_xive (unsigned long,int *,int *) ;

__attribute__((used)) static long ics_opal_get_server(struct ics *ics, unsigned long vec)
{
 int64_t rc;
 __be16 server;
 int8_t priority;


 rc = opal_get_xive(vec, &server, &priority);
 if (rc != OPAL_SUCCESS)
  return -1;
 return ics_opal_unmangle_server(be16_to_cpu(server));
}
