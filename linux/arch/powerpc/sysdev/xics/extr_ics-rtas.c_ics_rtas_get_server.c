
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ics {int dummy; } ;


 int ibm_get_xive ;
 int rtas_call (int ,int,int,int*,unsigned long) ;

__attribute__((used)) static long ics_rtas_get_server(struct ics *ics, unsigned long vec)
{
 int rc, status[2];

 rc = rtas_call(ibm_get_xive, 1, 3, status, vec);
 if (rc)
  return -1;
 return status[0];
}
