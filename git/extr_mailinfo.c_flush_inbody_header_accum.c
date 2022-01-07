
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct mailinfo {TYPE_1__ inbody_header_accum; int s_hdr_data; } ;


 int BUG (char*) ;
 int check_header (struct mailinfo*,TYPE_1__*,int ,int ) ;
 int strbuf_reset (TYPE_1__*) ;

__attribute__((used)) static void flush_inbody_header_accum(struct mailinfo *mi)
{
 if (!mi->inbody_header_accum.len)
  return;
 if (!check_header(mi, &mi->inbody_header_accum, mi->s_hdr_data, 0))
  BUG("inbody_header_accum, if not empty, must always contain a valid in-body header");
 strbuf_reset(&mi->inbody_header_accum);
}
