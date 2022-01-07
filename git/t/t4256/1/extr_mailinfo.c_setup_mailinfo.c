
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mailinfo {int header_stage; int use_inbody_headers; int content; int content_top; int inbody_header_accum; int log_message; int charset; int email; int name; } ;


 int git_config (int ,struct mailinfo*) ;
 int git_mailinfo_config ;
 int memset (struct mailinfo*,int ,int) ;
 int strbuf_init (int *,int ) ;

void setup_mailinfo(struct mailinfo *mi)
{
 memset(mi, 0, sizeof(*mi));
 strbuf_init(&mi->name, 0);
 strbuf_init(&mi->email, 0);
 strbuf_init(&mi->charset, 0);
 strbuf_init(&mi->log_message, 0);
 strbuf_init(&mi->inbody_header_accum, 0);
 mi->header_stage = 1;
 mi->use_inbody_headers = 1;
 mi->content_top = mi->content;
 git_config(git_mailinfo_config, mi);
}
