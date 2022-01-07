
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int parent; } ;
struct fwnode_handle {int dummy; } ;
typedef int DEFINE_MUTEX ;


 struct fwnode_handle* irq_domain_alloc_named_fwnode (char*) ;
 struct irq_domain* irq_domain_create_tree (struct fwnode_handle*,int *,int *) ;
 int irq_domain_free_fwnode (struct fwnode_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uv_domain_ops ;
 int x86_vector_domain ;

__attribute__((used)) static struct irq_domain *uv_get_irq_domain(void)
{
 static struct irq_domain *uv_domain;
 static DEFINE_MUTEX(uv_lock);
 struct fwnode_handle *fn;

 mutex_lock(&uv_lock);
 if (uv_domain)
  goto out;

 fn = irq_domain_alloc_named_fwnode("UV-CORE");
 if (!fn)
  goto out;

 uv_domain = irq_domain_create_tree(fn, &uv_domain_ops, ((void*)0));
 irq_domain_free_fwnode(fn);
 if (uv_domain)
  uv_domain->parent = x86_vector_domain;
out:
 mutex_unlock(&uv_lock);

 return uv_domain;
}
