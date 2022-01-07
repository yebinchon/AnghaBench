
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u64 ;
struct kimage {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int FDT_ERR_NOSPACE ;
 int FDT_ERR_NOTFOUND ;
 int FDT_PROP_BOOTARGS ;
 int FDT_PROP_INITRD_END ;
 int FDT_PROP_INITRD_START ;
 int FDT_PROP_KASLR_SEED ;
 int FDT_PROP_RNG_SEED ;
 int RNG_SEED_SIZE ;
 int fdt_delprop (void*,int,int ) ;
 int fdt_path_offset (void*,char*) ;
 int fdt_setprop (void*,int,int ,int *,int) ;
 int fdt_setprop_string (void*,int,int ,char*) ;
 int fdt_setprop_u64 (void*,int,int ,unsigned long) ;
 int get_random_bytes (int *,int) ;
 unsigned long get_random_u64 () ;
 int pr_notice (char*,int ) ;
 scalar_t__ rng_is_initialized () ;

__attribute__((used)) static int setup_dtb(struct kimage *image,
       unsigned long initrd_load_addr, unsigned long initrd_len,
       char *cmdline, void *dtb)
{
 int off, ret;

 ret = fdt_path_offset(dtb, "/chosen");
 if (ret < 0)
  goto out;

 off = ret;


 if (cmdline) {
  ret = fdt_setprop_string(dtb, off, FDT_PROP_BOOTARGS, cmdline);
  if (ret)
   goto out;
 } else {
  ret = fdt_delprop(dtb, off, FDT_PROP_BOOTARGS);
  if (ret && (ret != -FDT_ERR_NOTFOUND))
   goto out;
 }


 if (initrd_load_addr) {
  ret = fdt_setprop_u64(dtb, off, FDT_PROP_INITRD_START,
          initrd_load_addr);
  if (ret)
   goto out;

  ret = fdt_setprop_u64(dtb, off, FDT_PROP_INITRD_END,
          initrd_load_addr + initrd_len);
  if (ret)
   goto out;
 } else {
  ret = fdt_delprop(dtb, off, FDT_PROP_INITRD_START);
  if (ret && (ret != -FDT_ERR_NOTFOUND))
   goto out;

  ret = fdt_delprop(dtb, off, FDT_PROP_INITRD_END);
  if (ret && (ret != -FDT_ERR_NOTFOUND))
   goto out;
 }


 ret = fdt_delprop(dtb, off, FDT_PROP_KASLR_SEED);
 if (ret == -FDT_ERR_NOTFOUND)
  ret = 0;
 else if (ret)
  goto out;

 if (rng_is_initialized()) {
  u64 seed = get_random_u64();
  ret = fdt_setprop_u64(dtb, off, FDT_PROP_KASLR_SEED, seed);
  if (ret)
   goto out;
 } else {
  pr_notice("RNG is not initialised: omitting \"%s\" property\n",
    FDT_PROP_KASLR_SEED);
 }


 if (rng_is_initialized()) {
  u8 rng_seed[RNG_SEED_SIZE];
  get_random_bytes(rng_seed, RNG_SEED_SIZE);
  ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
    RNG_SEED_SIZE);
  if (ret)
   goto out;
 } else {
  pr_notice("RNG is not initialised: omitting \"%s\" property\n",
    FDT_PROP_RNG_SEED);
 }

out:
 if (ret)
  return (ret == -FDT_ERR_NOSPACE) ? -ENOMEM : -EINVAL;

 return 0;
}
