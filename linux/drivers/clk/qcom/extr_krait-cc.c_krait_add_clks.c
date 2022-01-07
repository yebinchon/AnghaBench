
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 struct clk* ERR_PTR (int) ;
 int GFP_KERNEL ;
 void* kasprintf (int ,char*,int) ;
 int kfree (void*) ;
 int krait_add_div (struct device*,int,char const*,unsigned int) ;
 struct clk* krait_add_pri_mux (struct device*,int,char const*,unsigned int) ;
 int krait_add_sec_mux (struct device*,int,char const*,unsigned int,int) ;

__attribute__((used)) static struct clk *krait_add_clks(struct device *dev, int id, bool unique_aux)
{
 int ret;
 unsigned int offset;
 void *p = ((void*)0);
 const char *s;
 struct clk *clk;

 if (id >= 0) {
  offset = 0x4501 + (0x1000 * id);
  s = p = kasprintf(GFP_KERNEL, "%d", id);
  if (!s)
   return ERR_PTR(-ENOMEM);
 } else {
  offset = 0x500;
  s = "_l2";
 }

 ret = krait_add_div(dev, id, s, offset);
 if (ret) {
  clk = ERR_PTR(ret);
  goto err;
 }

 ret = krait_add_sec_mux(dev, id, s, offset, unique_aux);
 if (ret) {
  clk = ERR_PTR(ret);
  goto err;
 }

 clk = krait_add_pri_mux(dev, id, s, offset);
err:
 kfree(p);
 return clk;
}
