
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct rdr_tbl_ent {scalar_t__ width; size_t num_words; } ;
typedef size_t int32_t ;


 scalar_t__ ONYX_INTF ;
 scalar_t__ perf_processor_interface ;
 struct rdr_tbl_ent* perf_rdr_get_entry (int ) ;
 int perf_rdr_shift_out_U (int ,int ) ;
 int perf_rdr_shift_out_W (int ,int ) ;
 int printk (char*) ;

__attribute__((used)) static void perf_rdr_write(uint32_t rdr_num, uint64_t *buffer)
{
 const struct rdr_tbl_ent *tentry;
 int32_t i;

printk("perf_rdr_write\n");
 tentry = perf_rdr_get_entry(rdr_num);
 if (tentry->width == 0) { return; }

 i = tentry->num_words;
 while (i--) {
  if (perf_processor_interface == ONYX_INTF) {
   perf_rdr_shift_out_U(rdr_num, buffer[i]);
  } else {
   perf_rdr_shift_out_W(rdr_num, buffer[i]);
  }
 }
printk("perf_rdr_write done\n");
}
