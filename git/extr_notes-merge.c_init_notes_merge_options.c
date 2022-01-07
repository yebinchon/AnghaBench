
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct notes_merge_options {struct repository* repo; int verbosity; int commit_msg; } ;


 int NOTES_MERGE_VERBOSITY_DEFAULT ;
 int memset (struct notes_merge_options*,int ,int) ;
 int strbuf_init (int *,int ) ;

void init_notes_merge_options(struct repository *r,
         struct notes_merge_options *o)
{
 memset(o, 0, sizeof(struct notes_merge_options));
 strbuf_init(&(o->commit_msg), 0);
 o->verbosity = NOTES_MERGE_VERBOSITY_DEFAULT;
 o->repo = r;
}
