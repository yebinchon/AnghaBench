
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mailinfo {int log_message; int *** content_top; int *** content; int ** s_hdr_data; int ** p_hdr_data; int ** message_id; int inbody_header_accum; int charset; int email; int name; } ;


 int free (int **) ;
 int strbuf_release (int *) ;

void clear_mailinfo(struct mailinfo *mi)
{
 int i;

 strbuf_release(&mi->name);
 strbuf_release(&mi->email);
 strbuf_release(&mi->charset);
 strbuf_release(&mi->inbody_header_accum);
 free(mi->message_id);

 if (mi->p_hdr_data)
  for (i = 0; mi->p_hdr_data[i]; i++)
   strbuf_release(mi->p_hdr_data[i]);
 free(mi->p_hdr_data);
 if (mi->s_hdr_data)
  for (i = 0; mi->s_hdr_data[i]; i++)
   strbuf_release(mi->s_hdr_data[i]);
 free(mi->s_hdr_data);

 while (mi->content < mi->content_top) {
  free(*(mi->content_top));
  mi->content_top--;
 }

 strbuf_release(&mi->log_message);
}
