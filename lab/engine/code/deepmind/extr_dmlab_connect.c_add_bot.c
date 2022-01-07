
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cbuf_AddText (int ) ;
 int va (char*,char const*,double,char const*) ;

__attribute__((used)) static void add_bot(const char* name, double skill, const char* team) {
  Cbuf_AddText(va("addbot %s %f %s\n", name, skill, team));
}
