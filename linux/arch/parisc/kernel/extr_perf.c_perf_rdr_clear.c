
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rdr_tbl_ent {scalar_t__ width; int num_words; } ;
typedef int int32_t ;


 scalar_t__ ONYX_INTF ;
 scalar_t__ perf_processor_interface ;
 struct rdr_tbl_ent* perf_rdr_get_entry (int ) ;
 int perf_rdr_shift_out_U (int ,unsigned long) ;
 int perf_rdr_shift_out_W (int ,unsigned long) ;

__attribute__((used)) static int perf_rdr_clear(uint32_t rdr_num)
{
 const struct rdr_tbl_ent *tentry;
 int32_t i;

 tentry = perf_rdr_get_entry(rdr_num);

 if (tentry->width == 0) {
  return -1;
 }

 i = tentry->num_words;
 while (i--) {
  if (perf_processor_interface == ONYX_INTF) {
   perf_rdr_shift_out_U(rdr_num, 0UL);
  } else {
   perf_rdr_shift_out_W(rdr_num, 0UL);
  }
 }

 return 0;
}
