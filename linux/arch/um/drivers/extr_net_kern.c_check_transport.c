
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int (* setup ) (char*,char**,void*) ;int setup_size; int name; } ;
typedef int gfp_t ;


 int kfree (void*) ;
 void* kmalloc (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int stub1 (char*,char**,void*) ;

__attribute__((used)) static int check_transport(struct transport *transport, char *eth, int n,
      void **init_out, char **mac_out, gfp_t gfp_mask)
{
 int len;

 len = strlen(transport->name);
 if (strncmp(eth, transport->name, len))
  return 0;

 eth += len;
 if (*eth == ',')
  eth++;
 else if (*eth != '\0')
  return 0;

 *init_out = kmalloc(transport->setup_size, gfp_mask);
 if (*init_out == ((void*)0))
  return 1;

 if (!transport->setup(eth, mac_out, *init_out)) {
  kfree(*init_out);
  *init_out = ((void*)0);
 }
 return 1;
}
