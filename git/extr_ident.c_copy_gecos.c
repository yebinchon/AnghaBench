
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct passwd {int * pw_name; } ;


 char* get_gecos (struct passwd const*) ;
 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_addstr (struct strbuf*,int *) ;
 int toupper (int ) ;

__attribute__((used)) static void copy_gecos(const struct passwd *w, struct strbuf *name)
{
 char *src;





 for (src = get_gecos(w); *src && *src != ','; src++) {
  int ch = *src;
  if (ch != '&')
   strbuf_addch(name, ch);
  else {

   strbuf_addch(name, toupper(*w->pw_name));
   strbuf_addstr(name, w->pw_name + 1);
  }
 }
}
