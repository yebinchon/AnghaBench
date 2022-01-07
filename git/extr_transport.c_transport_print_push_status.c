
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {scalar_t__ status; int name; struct ref* next; } ;


 scalar_t__ REF_STATUS_NONE ;
 scalar_t__ REF_STATUS_OK ;
 scalar_t__ REF_STATUS_REJECT_ALREADY_EXISTS ;
 scalar_t__ REF_STATUS_REJECT_FETCH_FIRST ;
 scalar_t__ REF_STATUS_REJECT_NEEDS_FORCE ;
 scalar_t__ REF_STATUS_REJECT_NONFASTFORWARD ;
 scalar_t__ REF_STATUS_UPTODATE ;
 unsigned int REJECT_ALREADY_EXISTS ;
 unsigned int REJECT_FETCH_FIRST ;
 unsigned int REJECT_NEEDS_FORCE ;
 unsigned int REJECT_NON_FF_HEAD ;
 unsigned int REJECT_NON_FF_OTHER ;
 int RESOLVE_REF_READING ;
 int _ (char*) ;
 int free (char*) ;
 scalar_t__ print_one_push_status (struct ref*,char const*,int,int,int) ;
 char* resolve_refdup (char*,int ,int *,int *) ;
 int strcmp (char*,int ) ;
 scalar_t__ transport_color_config () ;
 int transport_summary_width (struct ref*) ;
 int warning (int ) ;

void transport_print_push_status(const char *dest, struct ref *refs,
      int verbose, int porcelain, unsigned int *reject_reasons)
{
 struct ref *ref;
 int n = 0;
 char *head;
 int summary_width = transport_summary_width(refs);

 if (transport_color_config() < 0)
  warning(_("could not parse transport.color.* config"));

 head = resolve_refdup("HEAD", RESOLVE_REF_READING, ((void*)0), ((void*)0));

 if (verbose) {
  for (ref = refs; ref; ref = ref->next)
   if (ref->status == REF_STATUS_UPTODATE)
    n += print_one_push_status(ref, dest, n,
          porcelain, summary_width);
 }

 for (ref = refs; ref; ref = ref->next)
  if (ref->status == REF_STATUS_OK)
   n += print_one_push_status(ref, dest, n,
         porcelain, summary_width);

 *reject_reasons = 0;
 for (ref = refs; ref; ref = ref->next) {
  if (ref->status != REF_STATUS_NONE &&
      ref->status != REF_STATUS_UPTODATE &&
      ref->status != REF_STATUS_OK)
   n += print_one_push_status(ref, dest, n,
         porcelain, summary_width);
  if (ref->status == REF_STATUS_REJECT_NONFASTFORWARD) {
   if (head != ((void*)0) && !strcmp(head, ref->name))
    *reject_reasons |= REJECT_NON_FF_HEAD;
   else
    *reject_reasons |= REJECT_NON_FF_OTHER;
  } else if (ref->status == REF_STATUS_REJECT_ALREADY_EXISTS) {
   *reject_reasons |= REJECT_ALREADY_EXISTS;
  } else if (ref->status == REF_STATUS_REJECT_FETCH_FIRST) {
   *reject_reasons |= REJECT_FETCH_FIRST;
  } else if (ref->status == REF_STATUS_REJECT_NEEDS_FORCE) {
   *reject_reasons |= REJECT_NEEDS_FORCE;
  }
 }
 free(head);
}
