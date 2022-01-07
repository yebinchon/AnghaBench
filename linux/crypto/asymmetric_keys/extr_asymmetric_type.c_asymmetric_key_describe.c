
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct key {char* description; } ;
struct asymmetric_key_subtype {int (* describe ) (struct key const*,struct seq_file*) ;} ;
struct asymmetric_key_ids {struct asymmetric_key_id** id; } ;
struct asymmetric_key_id {int len; unsigned char* data; } ;


 struct asymmetric_key_ids* asymmetric_key_ids (struct key const*) ;
 struct asymmetric_key_subtype* asymmetric_key_subtype (struct key const*) ;
 int seq_printf (struct seq_file*,char*,int,unsigned char const*) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct key const*,struct seq_file*) ;

__attribute__((used)) static void asymmetric_key_describe(const struct key *key, struct seq_file *m)
{
 const struct asymmetric_key_subtype *subtype = asymmetric_key_subtype(key);
 const struct asymmetric_key_ids *kids = asymmetric_key_ids(key);
 const struct asymmetric_key_id *kid;
 const unsigned char *p;
 int n;

 seq_puts(m, key->description);

 if (subtype) {
  seq_puts(m, ": ");
  subtype->describe(key, m);

  if (kids && kids->id[1]) {
   kid = kids->id[1];
   seq_putc(m, ' ');
   n = kid->len;
   p = kid->data;
   if (n > 4) {
    p += n - 4;
    n = 4;
   }
   seq_printf(m, "%*phN", n, p);
  }

  seq_puts(m, " [");

  seq_putc(m, ']');
 }
}
