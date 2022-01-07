
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int name; } ;
struct clk {int dummy; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 unsigned long abs (unsigned int) ;
 unsigned long clk_get_rate (struct clk*) ;
 struct clk* clk_get_sys (int ,char*) ;
 scalar_t__ clk_prepare_enable (struct clk*) ;
 int clk_set_rate (struct clk*,unsigned int) ;
 struct clk* of_clk_get (struct device_node*,int ) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_node_put (struct device_node*) ;
 int pr_debug (char*,unsigned int,...) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static void mpc512x_set_pixel_clock(unsigned int pixclock)
{
 struct device_node *np;
 struct clk *clk_diu;
 unsigned long epsilon, minpixclock, maxpixclock;
 unsigned long offset, want, got, delta;


 np = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpc5121-diu");
 if (!np) {
  pr_err("Could not find DIU device tree node.\n");
  return;
 }
 clk_diu = of_clk_get(np, 0);
 if (IS_ERR(clk_diu)) {

  clk_diu = clk_get_sys(np->name, "ipg");
 }
 of_node_put(np);
 if (IS_ERR(clk_diu)) {
  pr_err("Could not lookup DIU clock.\n");
  return;
 }
 if (clk_prepare_enable(clk_diu)) {
  pr_err("Could not enable DIU clock.\n");
  return;
 }






 pr_debug("DIU pixclock in ps - %u\n", pixclock);
 pixclock = (1000000000 / pixclock) * 1000;
 pr_debug("DIU pixclock freq  - %u\n", pixclock);
 epsilon = pixclock / 20;
 pr_debug("DIU deviation      - %lu\n", epsilon);
 minpixclock = pixclock - epsilon;
 maxpixclock = pixclock + epsilon;
 pr_debug("DIU minpixclock    - %lu\n", minpixclock);
 pr_debug("DIU maxpixclock    - %lu\n", maxpixclock);
 for (offset = 0; offset <= epsilon; offset += pixclock / 64) {
  want = pixclock - offset;
  pr_debug("DIU checking clock - %lu\n", want);
  clk_set_rate(clk_diu, want);
  got = clk_get_rate(clk_diu);
  delta = abs(pixclock - got);
  if (delta < epsilon)
   break;
  if (!offset)
   continue;
  want = pixclock + offset;
  pr_debug("DIU checking clock - %lu\n", want);
  clk_set_rate(clk_diu, want);
  got = clk_get_rate(clk_diu);
  delta = abs(pixclock - got);
  if (delta < epsilon)
   break;
 }
 if (offset <= epsilon) {
  pr_debug("DIU clock accepted - %lu\n", want);
  pr_debug("DIU pixclock want %u, got %lu, delta %lu, eps %lu\n",
    pixclock, got, delta, epsilon);
  return;
 }
 pr_warn("DIU pixclock auto search unsuccessful\n");







 pr_warn("DIU pixclock best effort fallback (backend's choice)\n");
 clk_set_rate(clk_diu, pixclock);
 got = clk_get_rate(clk_diu);
 delta = abs(pixclock - got);
 pr_debug("DIU pixclock want %u, got %lu, delta %lu, eps %lu\n",
   pixclock, got, delta, epsilon);
}
