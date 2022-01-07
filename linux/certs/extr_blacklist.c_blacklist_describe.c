
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct key {int description; } ;


 int seq_puts (struct seq_file*,int ) ;

__attribute__((used)) static void blacklist_describe(const struct key *key, struct seq_file *m)
{
 seq_puts(m, key->description);
}
