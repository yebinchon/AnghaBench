
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;
typedef int (* each_remote_fn ) (struct remote*,void*) ;


 int read_config () ;
 struct remote** remotes ;
 int remotes_nr ;

int for_each_remote(each_remote_fn fn, void *priv)
{
 int i, result = 0;
 read_config();
 for (i = 0; i < remotes_nr && !result; i++) {
  struct remote *r = remotes[i];
  if (!r)
   continue;
  result = fn(r, priv);
 }
 return result;
}
