
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 int DEFAULT_HEADROOM ;
 scalar_t__ kstrtoul (char*,int,long*) ;
 char* uml_vector_fetch_arg (struct arglist*,char*) ;

__attribute__((used)) static int get_headroom(struct arglist *def)
{
 char *mtu = uml_vector_fetch_arg(def, "headroom");
 long result;

 if (mtu != ((void*)0)) {
  if (kstrtoul(mtu, 10, &result) == 0)
   return result;
 }
 return DEFAULT_HEADROOM;
}
