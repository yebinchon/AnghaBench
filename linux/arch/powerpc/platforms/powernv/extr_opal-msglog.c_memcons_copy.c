
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct memcons {int obuf_size; int obuf_phys; int out_pos; } ;
typedef size_t ssize_t ;
typedef int loff_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int MEMCONS_OUT_POS_MASK ;
 int MEMCONS_OUT_POS_WRAP ;
 int READ_ONCE (int ) ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 size_t memory_read_from_buffer (char*,size_t,int *,char const*,int) ;
 char* phys_to_virt (int ) ;
 int pr_err (char*) ;
 int smp_rmb () ;

ssize_t memcons_copy(struct memcons *mc, char *to, loff_t pos, size_t count)
{
 const char *conbuf;
 ssize_t ret;
 size_t first_read = 0;
 uint32_t out_pos, avail;

 if (!mc)
  return -ENODEV;

 out_pos = be32_to_cpu(READ_ONCE(mc->out_pos));



 smp_rmb();

 conbuf = phys_to_virt(be64_to_cpu(mc->obuf_phys));




 if (out_pos & MEMCONS_OUT_POS_WRAP) {

  out_pos &= MEMCONS_OUT_POS_MASK;
  avail = be32_to_cpu(mc->obuf_size) - out_pos;

  ret = memory_read_from_buffer(to, count, &pos,
    conbuf + out_pos, avail);

  if (ret < 0)
   goto out;

  first_read = ret;
  to += first_read;
  count -= first_read;
  pos -= avail;

  if (count <= 0)
   goto out;
 }


 if (out_pos > be32_to_cpu(mc->obuf_size)) {
  pr_err("OPAL: memory console corruption. Aborting read.\n");
  return -EINVAL;
 }

 ret = memory_read_from_buffer(to, count, &pos, conbuf, out_pos);

 if (ret < 0)
  goto out;

 ret += first_read;
out:
 return ret;
}
