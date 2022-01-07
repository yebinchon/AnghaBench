
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int result_tf; int hw_tag; int ap; } ;


 int sil24_read_tf (int ,int ,int *) ;

__attribute__((used)) static bool sil24_qc_fill_rtf(struct ata_queued_cmd *qc)
{
 sil24_read_tf(qc->ap, qc->hw_tag, &qc->result_tf);
 return 1;
}
