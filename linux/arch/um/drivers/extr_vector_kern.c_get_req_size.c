
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 int ETH_HEADER_OTHER ;
 int SAFETY_MARGIN ;
 int get_headroom (struct arglist*) ;
 int get_mtu (struct arglist*) ;
 scalar_t__ kstrtoul (char*,int,long*) ;
 char* uml_vector_fetch_arg (struct arglist*,char*) ;

__attribute__((used)) static int get_req_size(struct arglist *def)
{
 char *gro = uml_vector_fetch_arg(def, "gro");
 long result;

 if (gro != ((void*)0)) {
  if (kstrtoul(gro, 10, &result) == 0) {
   if (result > 0)
    return 65536;
  }
 }
 return get_mtu(def) + ETH_HEADER_OTHER +
  get_headroom(def) + SAFETY_MARGIN;
}
