
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp {char const* name; } ;


 int EINVAL ;
 int ENOMEM ;
 struct zcomp* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kfree (struct zcomp*) ;
 struct zcomp* kzalloc (int,int ) ;
 int zcomp_available_algorithm (char const*) ;
 int zcomp_init (struct zcomp*) ;

struct zcomp *zcomp_create(const char *compress)
{
 struct zcomp *comp;
 int error;

 if (!zcomp_available_algorithm(compress))
  return ERR_PTR(-EINVAL);

 comp = kzalloc(sizeof(struct zcomp), GFP_KERNEL);
 if (!comp)
  return ERR_PTR(-ENOMEM);

 comp->name = compress;
 error = zcomp_init(comp);
 if (error) {
  kfree(comp);
  return ERR_PTR(error);
 }
 return comp;
}
