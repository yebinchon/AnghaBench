
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int my_lba; int alternate_lba; int partition_entry_array_crc32; int sizeof_partition_entry; int num_partition_entries; int disk_guid; int last_usable_lba; int first_usable_lba; } ;
typedef TYPE_1__ gpt_header ;


 scalar_t__ efi_guidcmp (int ,int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static void
compare_gpts(gpt_header *pgpt, gpt_header *agpt, u64 lastlba)
{
 int error_found = 0;
 if (!pgpt || !agpt)
  return;
 if (le64_to_cpu(pgpt->my_lba) != le64_to_cpu(agpt->alternate_lba)) {
  pr_warn("GPT:Primary header LBA != Alt. header alternate_lba\n");
  pr_warn("GPT:%lld != %lld\n",
         (unsigned long long)le64_to_cpu(pgpt->my_lba),
                       (unsigned long long)le64_to_cpu(agpt->alternate_lba));
  error_found++;
 }
 if (le64_to_cpu(pgpt->alternate_lba) != le64_to_cpu(agpt->my_lba)) {
  pr_warn("GPT:Primary header alternate_lba != Alt. header my_lba\n");
  pr_warn("GPT:%lld != %lld\n",
         (unsigned long long)le64_to_cpu(pgpt->alternate_lba),
                       (unsigned long long)le64_to_cpu(agpt->my_lba));
  error_found++;
 }
 if (le64_to_cpu(pgpt->first_usable_lba) !=
            le64_to_cpu(agpt->first_usable_lba)) {
  pr_warn("GPT:first_usable_lbas don't match.\n");
  pr_warn("GPT:%lld != %lld\n",
         (unsigned long long)le64_to_cpu(pgpt->first_usable_lba),
                       (unsigned long long)le64_to_cpu(agpt->first_usable_lba));
  error_found++;
 }
 if (le64_to_cpu(pgpt->last_usable_lba) !=
            le64_to_cpu(agpt->last_usable_lba)) {
  pr_warn("GPT:last_usable_lbas don't match.\n");
  pr_warn("GPT:%lld != %lld\n",
         (unsigned long long)le64_to_cpu(pgpt->last_usable_lba),
                       (unsigned long long)le64_to_cpu(agpt->last_usable_lba));
  error_found++;
 }
 if (efi_guidcmp(pgpt->disk_guid, agpt->disk_guid)) {
  pr_warn("GPT:disk_guids don't match.\n");
  error_found++;
 }
 if (le32_to_cpu(pgpt->num_partition_entries) !=
            le32_to_cpu(agpt->num_partition_entries)) {
  pr_warn("GPT:num_partition_entries don't match: "
         "0x%x != 0x%x\n",
         le32_to_cpu(pgpt->num_partition_entries),
         le32_to_cpu(agpt->num_partition_entries));
  error_found++;
 }
 if (le32_to_cpu(pgpt->sizeof_partition_entry) !=
            le32_to_cpu(agpt->sizeof_partition_entry)) {
  pr_warn("GPT:sizeof_partition_entry values don't match: "
         "0x%x != 0x%x\n",
                       le32_to_cpu(pgpt->sizeof_partition_entry),
         le32_to_cpu(agpt->sizeof_partition_entry));
  error_found++;
 }
 if (le32_to_cpu(pgpt->partition_entry_array_crc32) !=
            le32_to_cpu(agpt->partition_entry_array_crc32)) {
  pr_warn("GPT:partition_entry_array_crc32 values don't match: "
         "0x%x != 0x%x\n",
                       le32_to_cpu(pgpt->partition_entry_array_crc32),
         le32_to_cpu(agpt->partition_entry_array_crc32));
  error_found++;
 }
 if (le64_to_cpu(pgpt->alternate_lba) != lastlba) {
  pr_warn("GPT:Primary header thinks Alt. header is not at the end of the disk.\n");
  pr_warn("GPT:%lld != %lld\n",
   (unsigned long long)le64_to_cpu(pgpt->alternate_lba),
   (unsigned long long)lastlba);
  error_found++;
 }

 if (le64_to_cpu(agpt->my_lba) != lastlba) {
  pr_warn("GPT:Alternate GPT header not at the end of the disk.\n");
  pr_warn("GPT:%lld != %lld\n",
   (unsigned long long)le64_to_cpu(agpt->my_lba),
   (unsigned long long)lastlba);
  error_found++;
 }

 if (error_found)
  pr_warn("GPT: Use GNU Parted to correct GPT errors.\n");
 return;
}
