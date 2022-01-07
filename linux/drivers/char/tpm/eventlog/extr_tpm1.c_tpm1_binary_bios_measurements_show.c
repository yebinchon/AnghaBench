
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpa_event {int pcr_index; int event_type; int event_size; } ;
struct seq_file {int dummy; } ;


 void* do_endian_conversion (int) ;
 int memcpy (struct tcpa_event*,struct tcpa_event*,int) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int tpm1_binary_bios_measurements_show(struct seq_file *m, void *v)
{
 struct tcpa_event *event = v;
 struct tcpa_event temp_event;
 char *temp_ptr;
 int i;

 memcpy(&temp_event, event, sizeof(struct tcpa_event));


 temp_event.pcr_index = do_endian_conversion(event->pcr_index);
 temp_event.event_type = do_endian_conversion(event->event_type);
 temp_event.event_size = do_endian_conversion(event->event_size);

 temp_ptr = (char *) &temp_event;

 for (i = 0; i < (sizeof(struct tcpa_event) - 1) ; i++)
  seq_putc(m, temp_ptr[i]);

 temp_ptr = (char *) v;

 for (i = (sizeof(struct tcpa_event) - 1);
      i < (sizeof(struct tcpa_event) + temp_event.event_size); i++)
  seq_putc(m, temp_ptr[i]);

 return 0;

}
