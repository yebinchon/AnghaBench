
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec {int fetch; } ;


 int memset (struct refspec*,int ,int) ;

void refspec_init(struct refspec *rs, int fetch)
{
 memset(rs, 0, sizeof(*rs));
 rs->fetch = fetch;
}
