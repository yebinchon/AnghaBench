
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
struct split_index {void* replace_bitmap; void* delete_bitmap; TYPE_1__ base_oid; } ;
struct index_state {int dummy; } ;
struct TYPE_4__ {unsigned long rawsz; } ;


 int error (char*) ;
 void* ewah_new () ;
 int ewah_read_mmap (void*,unsigned char const*,unsigned long) ;
 int hashcpy (int ,unsigned char const*) ;
 struct split_index* init_split_index (struct index_state*) ;
 TYPE_2__* the_hash_algo ;

int read_link_extension(struct index_state *istate,
    const void *data_, unsigned long sz)
{
 const unsigned char *data = data_;
 struct split_index *si;
 int ret;

 if (sz < the_hash_algo->rawsz)
  return error("corrupt link extension (too short)");
 si = init_split_index(istate);
 hashcpy(si->base_oid.hash, data);
 data += the_hash_algo->rawsz;
 sz -= the_hash_algo->rawsz;
 if (!sz)
  return 0;
 si->delete_bitmap = ewah_new();
 ret = ewah_read_mmap(si->delete_bitmap, data, sz);
 if (ret < 0)
  return error("corrupt delete bitmap in link extension");
 data += ret;
 sz -= ret;
 si->replace_bitmap = ewah_new();
 ret = ewah_read_mmap(si->replace_bitmap, data, sz);
 if (ret < 0)
  return error("corrupt replace bitmap in link extension");
 if (ret != sz)
  return error("garbage at the end of link extension");
 return 0;
}
