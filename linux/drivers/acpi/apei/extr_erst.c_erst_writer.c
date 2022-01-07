
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pstore_record {int type; int id; int compressed; scalar_t__ size; } ;
struct TYPE_5__ {int section_count; int record_id; int flags; int notification_type; int creator_id; scalar_t__ record_length; int timestamp; int validation_bits; void* error_severity; int signature_end; int revision; int signature; } ;
struct TYPE_4__ {int section_offset; void* section_severity; int section_type; int flags; scalar_t__ validation_bits; int revision; scalar_t__ section_length; } ;
struct cper_pstore_record {TYPE_2__ hdr; TYPE_1__ sec_hdr; } ;
struct TYPE_6__ {scalar_t__ buf; } ;


 int CPER_CREATOR_PSTORE ;
 int CPER_HW_ERROR_FLAGS_PREVERR ;
 int CPER_NOTIFY_MCE ;
 int CPER_RECORD_REV ;
 int CPER_SECTION_TYPE_DMESG ;
 int CPER_SECTION_TYPE_DMESG_Z ;
 int CPER_SECTION_TYPE_MCE ;
 int CPER_SEC_PRIMARY ;
 int CPER_SEC_REV ;
 void* CPER_SEV_FATAL ;
 int CPER_SIG_END ;
 int CPER_SIG_RECORD ;
 int CPER_SIG_SIZE ;
 int CPER_VALID_TIMESTAMP ;
 int EINVAL ;


 int cper_next_record_id () ;
 TYPE_3__ erst_info ;
 int erst_write (TYPE_2__*) ;
 int ktime_get_real_seconds () ;
 int memcpy (int ,int ,int ) ;
 int memset (struct cper_pstore_record*,int ,int) ;

__attribute__((used)) static int erst_writer(struct pstore_record *record)
{
 struct cper_pstore_record *rcd = (struct cper_pstore_record *)
     (erst_info.buf - sizeof(*rcd));
 int ret;

 memset(rcd, 0, sizeof(*rcd));
 memcpy(rcd->hdr.signature, CPER_SIG_RECORD, CPER_SIG_SIZE);
 rcd->hdr.revision = CPER_RECORD_REV;
 rcd->hdr.signature_end = CPER_SIG_END;
 rcd->hdr.section_count = 1;
 rcd->hdr.error_severity = CPER_SEV_FATAL;

 rcd->hdr.validation_bits = CPER_VALID_TIMESTAMP;
 rcd->hdr.timestamp = ktime_get_real_seconds();
 rcd->hdr.record_length = sizeof(*rcd) + record->size;
 rcd->hdr.creator_id = CPER_CREATOR_PSTORE;
 rcd->hdr.notification_type = CPER_NOTIFY_MCE;
 rcd->hdr.record_id = cper_next_record_id();
 rcd->hdr.flags = CPER_HW_ERROR_FLAGS_PREVERR;

 rcd->sec_hdr.section_offset = sizeof(*rcd);
 rcd->sec_hdr.section_length = record->size;
 rcd->sec_hdr.revision = CPER_SEC_REV;

 rcd->sec_hdr.validation_bits = 0;
 rcd->sec_hdr.flags = CPER_SEC_PRIMARY;
 switch (record->type) {
 case 129:
  if (record->compressed)
   rcd->sec_hdr.section_type = CPER_SECTION_TYPE_DMESG_Z;
  else
   rcd->sec_hdr.section_type = CPER_SECTION_TYPE_DMESG;
  break;
 case 128:
  rcd->sec_hdr.section_type = CPER_SECTION_TYPE_MCE;
  break;
 default:
  return -EINVAL;
 }
 rcd->sec_hdr.section_severity = CPER_SEV_FATAL;

 ret = erst_write(&rcd->hdr);
 record->id = rcd->hdr.record_id;

 return ret;
}
