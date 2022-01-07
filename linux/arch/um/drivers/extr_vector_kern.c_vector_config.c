
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arglist {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup (char*,int ) ;
 struct arglist* uml_parse_vector_ifspec (char*) ;
 int vector_eth_configure (int,struct arglist*) ;
 int vector_parse (char*,int*,char**,char**) ;

__attribute__((used)) static int vector_config(char *str, char **error_out)
{
 int err, n;
 char *params;
 struct arglist *parsed;

 err = vector_parse(str, &n, &params, error_out);
 if (err != 0)
  return err;






 params = kstrdup(params, GFP_KERNEL);
 if (params == ((void*)0)) {
  *error_out = "vector_config failed to strdup string";
  return -ENOMEM;
 }

 parsed = uml_parse_vector_ifspec(params);

 if (parsed == ((void*)0)) {
  *error_out = "vector_config failed to parse parameters";
  return -EINVAL;
 }

 vector_eth_configure(n, parsed);
 return 0;
}
