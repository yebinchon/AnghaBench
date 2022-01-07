
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hashfile {unsigned int offset; void* buffer; int ctx; int crc32; scalar_t__ do_crc; } ;
struct TYPE_2__ {int (* update_fn ) (int *,void const*,unsigned int) ;} ;


 int crc32 (int ,void const*,unsigned int) ;
 int flush (struct hashfile*,void const*,unsigned int) ;
 int memcpy (void*,void const*,unsigned int) ;
 int stub1 (int *,void const*,unsigned int) ;
 TYPE_1__* the_hash_algo ;

void hashwrite(struct hashfile *f, const void *buf, unsigned int count)
{
 while (count) {
  unsigned offset = f->offset;
  unsigned left = sizeof(f->buffer) - offset;
  unsigned nr = count > left ? left : count;
  const void *data;

  if (f->do_crc)
   f->crc32 = crc32(f->crc32, buf, nr);

  if (nr == sizeof(f->buffer)) {

   data = buf;
  } else {
   memcpy(f->buffer + offset, buf, nr);
   data = f->buffer;
  }

  count -= nr;
  offset += nr;
  buf = (char *) buf + nr;
  left -= nr;
  if (!left) {
   the_hash_algo->update_fn(&f->ctx, data, offset);
   flush(f, data, offset);
   offset = 0;
  }
  f->offset = offset;
 }
}
