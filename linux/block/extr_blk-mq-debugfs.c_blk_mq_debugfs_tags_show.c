
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct blk_mq_tags {int breserved_tags; scalar_t__ nr_reserved_tags; int bitmap_tags; int active_queues; scalar_t__ nr_tags; } ;


 scalar_t__ atomic_read (int *) ;
 int sbitmap_queue_show (int *,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void blk_mq_debugfs_tags_show(struct seq_file *m,
         struct blk_mq_tags *tags)
{
 seq_printf(m, "nr_tags=%u\n", tags->nr_tags);
 seq_printf(m, "nr_reserved_tags=%u\n", tags->nr_reserved_tags);
 seq_printf(m, "active_queues=%d\n",
     atomic_read(&tags->active_queues));

 seq_puts(m, "\nbitmap_tags:\n");
 sbitmap_queue_show(&tags->bitmap_tags, m);

 if (tags->nr_reserved_tags) {
  seq_puts(m, "\nbreserved_tags:\n");
  sbitmap_queue_show(&tags->breserved_tags, m);
 }
}
