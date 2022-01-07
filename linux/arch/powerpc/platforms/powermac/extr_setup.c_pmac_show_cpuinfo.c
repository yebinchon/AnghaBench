
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;


 int PMAC_FTR_GET_MB_INFO ;
 int PMAC_MB_INFO_FLAGS ;
 int PMAC_MB_INFO_MODEL ;
 int PMAC_MB_INFO_NAME ;
 int has_l2cache ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_find_node_by_path (char*) ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 void* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ pmac_call_feature (int ,int *,int ,long) ;
 scalar_t__ pmac_newworld ;
 int seq_printf (struct seq_file*,char*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void pmac_show_cpuinfo(struct seq_file *m)
{
 struct device_node *np;
 const char *pp;
 int plen;
 int mbmodel;
 unsigned int mbflags;
 char* mbname;

 mbmodel = pmac_call_feature(PMAC_FTR_GET_MB_INFO, ((void*)0),
        PMAC_MB_INFO_MODEL, 0);
 mbflags = pmac_call_feature(PMAC_FTR_GET_MB_INFO, ((void*)0),
        PMAC_MB_INFO_FLAGS, 0);
 if (pmac_call_feature(PMAC_FTR_GET_MB_INFO, ((void*)0), PMAC_MB_INFO_NAME,
         (long) &mbname) != 0)
  mbname = "Unknown";


 seq_printf(m, "machine\t\t: ");
 np = of_find_node_by_path("/");
 if (np != ((void*)0)) {
  pp = of_get_property(np, "model", ((void*)0));
  if (pp != ((void*)0))
   seq_printf(m, "%s\n", pp);
  else
   seq_printf(m, "PowerMac\n");
  pp = of_get_property(np, "compatible", &plen);
  if (pp != ((void*)0)) {
   seq_printf(m, "motherboard\t:");
   while (plen > 0) {
    int l = strlen(pp) + 1;
    seq_printf(m, " %s", pp);
    plen -= l;
    pp += l;
   }
   seq_printf(m, "\n");
  }
  of_node_put(np);
 } else
  seq_printf(m, "PowerMac\n");


 seq_printf(m, "detected as\t: %d (%s)\n", mbmodel, mbname);
 seq_printf(m, "pmac flags\t: %08x\n", mbflags);


 np = of_find_node_by_name(((void*)0), "l2-cache");
 if (np == ((void*)0))
  np = of_find_node_by_type(((void*)0), "cache");
 if (np != ((void*)0)) {
  const unsigned int *ic =
   of_get_property(np, "i-cache-size", ((void*)0));
  const unsigned int *dc =
   of_get_property(np, "d-cache-size", ((void*)0));
  seq_printf(m, "L2 cache\t:");
  has_l2cache = 1;
  if (of_get_property(np, "cache-unified", ((void*)0)) && dc) {
   seq_printf(m, " %dK unified", *dc / 1024);
  } else {
   if (ic)
    seq_printf(m, " %dK instruction", *ic / 1024);
   if (dc)
    seq_printf(m, "%s %dK data",
        (ic? " +": ""), *dc / 1024);
  }
  pp = of_get_property(np, "ram-type", ((void*)0));
  if (pp)
   seq_printf(m, " %s", pp);
  seq_printf(m, "\n");
  of_node_put(np);
 }


 seq_printf(m, "pmac-generation\t: %s\n",
     pmac_newworld ? "NewWorld" : "OldWorld");
}
