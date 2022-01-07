
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tpm_bios_log {void* bios_event_log_end; } ;
struct tpm_chip {struct tpm_bios_log log; } ;
struct tcpa_event {int event_type; int event_size; } ;
struct seq_file {struct tpm_chip* private; } ;
typedef int loff_t ;


 scalar_t__ do_endian_conversion (int ) ;

__attribute__((used)) static void *tpm1_bios_measurements_next(struct seq_file *m, void *v,
     loff_t *pos)
{
 struct tcpa_event *event = v;
 struct tpm_chip *chip = m->private;
 struct tpm_bios_log *log = &chip->log;
 void *limit = log->bios_event_log_end;
 u32 converted_event_size;
 u32 converted_event_type;

 converted_event_size = do_endian_conversion(event->event_size);

 v += sizeof(struct tcpa_event) + converted_event_size;


 if ((v + sizeof(struct tcpa_event)) > limit)
  return ((void*)0);

 event = v;

 converted_event_size = do_endian_conversion(event->event_size);
 converted_event_type = do_endian_conversion(event->event_type);

 if (((converted_event_type == 0) && (converted_event_size == 0)) ||
     ((v + sizeof(struct tcpa_event) + converted_event_size) > limit))
  return ((void*)0);

 (*pos)++;
 return v;
}
