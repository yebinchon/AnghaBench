
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int strport ;
typedef int ntop ;
typedef int ev_socklen_t ;


 int EAI_SYSTEM ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int event_err (int,char*) ;
 int event_errx (int,char*,int ) ;
 int fake_getnameinfo (struct sockaddr*,int ,char*,int,char*,int,int) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr*,int ,char*,int,char*,int,int) ;
 char* mm_strdup (char*) ;

__attribute__((used)) static void
name_from_addr(struct sockaddr *sa, ev_socklen_t salen,
    char **phost, char **pport)
{
 char ntop[NI_MAXHOST];
 char strport[NI_MAXSERV];
 int ni_result;
 ni_result = fake_getnameinfo(sa, salen,
  ntop, sizeof(ntop), strport, sizeof(strport),
  NI_NUMERICHOST|NI_NUMERICSERV);
 if (ni_result != 0)
   return;


 *phost = mm_strdup(ntop);
 *pport = mm_strdup(strport);
}
