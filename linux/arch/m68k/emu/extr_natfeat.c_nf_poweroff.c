
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nf_call (long) ;
 long nf_get_id (char*) ;

__attribute__((used)) static void nf_poweroff(void)
{
 long id = nf_get_id("NF_SHUTDOWN");

 if (id)
  nf_call(id);
}
