
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_priv {int list; int ref; } ;
struct firmware_cache {int lock; int head; } ;
typedef enum fw_opt { ____Placeholder_fw_opt } fw_opt ;


 int ENOMEM ;
 int FW_OPT_NOCACHE ;
 int INIT_LIST_HEAD (int *) ;
 struct fw_priv* __allocate_fw_priv (char const*,struct firmware_cache*,void*,size_t) ;
 struct fw_priv* __lookup_fw_priv (char const*) ;
 int kref_get (int *) ;
 int list_add (int *,int *) ;
 int pr_debug (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_lookup_fw_priv(const char *fw_name,
    struct firmware_cache *fwc,
    struct fw_priv **fw_priv, void *dbuf,
    size_t size, enum fw_opt opt_flags)
{
 struct fw_priv *tmp;

 spin_lock(&fwc->lock);
 if (!(opt_flags & FW_OPT_NOCACHE)) {
  tmp = __lookup_fw_priv(fw_name);
  if (tmp) {
   kref_get(&tmp->ref);
   spin_unlock(&fwc->lock);
   *fw_priv = tmp;
   pr_debug("batched request - sharing the same struct fw_priv and lookup for multiple requests\n");
   return 1;
  }
 }

 tmp = __allocate_fw_priv(fw_name, fwc, dbuf, size);
 if (tmp) {
  INIT_LIST_HEAD(&tmp->list);
  if (!(opt_flags & FW_OPT_NOCACHE))
   list_add(&tmp->list, &fwc->head);
 }
 spin_unlock(&fwc->lock);

 *fw_priv = tmp;

 return tmp ? 0 : -ENOMEM;
}
