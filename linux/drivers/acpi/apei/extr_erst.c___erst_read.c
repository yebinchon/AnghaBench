
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cper_record_header {int record_length; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct cper_record_header* vaddr; } ;


 int __erst_read_to_erange (int,int*) ;
 TYPE_1__ erst_erange ;
 int memcpy (struct cper_record_header*,struct cper_record_header*,int) ;

__attribute__((used)) static ssize_t __erst_read(u64 record_id, struct cper_record_header *record,
      size_t buflen)
{
 int rc;
 u64 offset, len = 0;
 struct cper_record_header *rcd_tmp;

 rc = __erst_read_to_erange(record_id, &offset);
 if (rc)
  return rc;
 rcd_tmp = erst_erange.vaddr + offset;
 len = rcd_tmp->record_length;
 if (len <= buflen)
  memcpy(record, rcd_tmp, len);

 return len;
}
