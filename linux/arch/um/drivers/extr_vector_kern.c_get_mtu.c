
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 int ETH_MAX_PACKET ;
 scalar_t__ kstrtoul (char*,int,long*) ;
 char* uml_vector_fetch_arg (struct arglist*,char*) ;

__attribute__((used)) static int get_mtu(struct arglist *def)
{
 char *mtu = uml_vector_fetch_arg(def, "mtu");
 long result;

 if (mtu != ((void*)0)) {
  if (kstrtoul(mtu, 10, &result) == 0)
   if ((result < (1 << 16) - 1) && (result >= 576))
    return result;
 }
 return ETH_MAX_PACKET;
}
