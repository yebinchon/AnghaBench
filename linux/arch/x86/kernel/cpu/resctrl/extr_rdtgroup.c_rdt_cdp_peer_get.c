
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdt_resource {int rid; } ;
struct rdt_domain {int id; } ;


 int EINVAL ;
 int ENOENT ;
 int IS_ERR_OR_NULL (struct rdt_domain*) ;




 scalar_t__ WARN_ON (int ) ;
 struct rdt_domain* rdt_find_domain (struct rdt_resource*,int ,int *) ;
 struct rdt_resource* rdt_resources_all ;

__attribute__((used)) static int rdt_cdp_peer_get(struct rdt_resource *r, struct rdt_domain *d,
       struct rdt_resource **r_cdp,
       struct rdt_domain **d_cdp)
{
 struct rdt_resource *_r_cdp = ((void*)0);
 struct rdt_domain *_d_cdp = ((void*)0);
 int ret = 0;

 switch (r->rid) {
 case 128:
  _r_cdp = &rdt_resources_all[129];
  break;
 case 129:
  _r_cdp = &rdt_resources_all[128];
  break;
 case 130:
  _r_cdp = &rdt_resources_all[131];
  break;
 case 131:
  _r_cdp = &rdt_resources_all[130];
  break;
 default:
  ret = -ENOENT;
  goto out;
 }
 _d_cdp = rdt_find_domain(_r_cdp, d->id, ((void*)0));
 if (WARN_ON(IS_ERR_OR_NULL(_d_cdp))) {
  _r_cdp = ((void*)0);
  ret = -EINVAL;
 }

out:
 *r_cdp = _r_cdp;
 *d_cdp = _d_cdp;

 return ret;
}
