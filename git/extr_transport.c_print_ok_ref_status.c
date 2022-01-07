
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct ref {int * peer_ref; int new_oid; scalar_t__ forced_update; int old_oid; int name; scalar_t__ deletion; } ;


 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ is_null_oid (int *) ;
 int print_ref_status (char,char*,struct ref*,int *,char const*,int,int) ;
 scalar_t__ starts_with (int ,char*) ;
 int strbuf_add_unique_abbrev (struct strbuf*,int *,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_ok_ref_status(struct ref *ref, int porcelain, int summary_width)
{
 if (ref->deletion)
  print_ref_status('-', "[deleted]", ref, ((void*)0), ((void*)0),
     porcelain, summary_width);
 else if (is_null_oid(&ref->old_oid))
  print_ref_status('*',
   (starts_with(ref->name, "refs/tags/") ? "[new tag]" :
   "[new branch]"),
   ref, ref->peer_ref, ((void*)0), porcelain, summary_width);
 else {
  struct strbuf quickref = STRBUF_INIT;
  char type;
  const char *msg;

  strbuf_add_unique_abbrev(&quickref, &ref->old_oid,
      DEFAULT_ABBREV);
  if (ref->forced_update) {
   strbuf_addstr(&quickref, "...");
   type = '+';
   msg = "forced update";
  } else {
   strbuf_addstr(&quickref, "..");
   type = ' ';
   msg = ((void*)0);
  }
  strbuf_add_unique_abbrev(&quickref, &ref->new_oid,
      DEFAULT_ABBREV);

  print_ref_status(type, quickref.buf, ref, ref->peer_ref, msg,
     porcelain, summary_width);
  strbuf_release(&quickref);
 }
}
