
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int status; char* remote_status; int * peer_ref; int deletion; } ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int print_ok_ref_status (struct ref*,int,int) ;
 int print_ref_status (char,char*,struct ref*,int *,char*,int,int) ;
 int stderr ;
 int stdout ;
 char* transport_anonymize_url (char const*) ;

__attribute__((used)) static int print_one_push_status(struct ref *ref, const char *dest, int count,
     int porcelain, int summary_width)
{
 if (!count) {
  char *url = transport_anonymize_url(dest);
  fprintf(porcelain ? stdout : stderr, "To %s\n", url);
  free(url);
 }

 switch(ref->status) {
 case 138:
  print_ref_status('X', "[no match]", ref, ((void*)0), ((void*)0),
     porcelain, summary_width);
  break;
 case 133:
  print_ref_status('!', "[rejected]", ref, ((void*)0),
     "remote does not support deleting refs",
     porcelain, summary_width);
  break;
 case 128:
  print_ref_status('=', "[up to date]", ref,
     ref->peer_ref, ((void*)0), porcelain, summary_width);
  break;
 case 132:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "non-fast-forward", porcelain, summary_width);
  break;
 case 136:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "already exists", porcelain, summary_width);
  break;
 case 135:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "fetch first", porcelain, summary_width);
  break;
 case 134:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "needs force", porcelain, summary_width);
  break;
 case 130:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "stale info", porcelain, summary_width);
  break;
 case 131:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "new shallow roots not allowed",
     porcelain, summary_width);
  break;
 case 129:
  print_ref_status('!', "[remote rejected]", ref,
     ref->deletion ? ((void*)0) : ref->peer_ref,
     ref->remote_status, porcelain, summary_width);
  break;
 case 139:
  print_ref_status('!', "[remote failure]", ref,
     ref->deletion ? ((void*)0) : ref->peer_ref,
     "remote failed to report status",
     porcelain, summary_width);
  break;
 case 140:
  print_ref_status('!', "[rejected]", ref, ref->peer_ref,
     "atomic push failed", porcelain, summary_width);
  break;
 case 137:
  print_ok_ref_status(ref, porcelain, summary_width);
  break;
 }

 return 1;
}
