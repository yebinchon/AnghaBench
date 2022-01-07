
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct packed_git {int dummy; } ;


 int GIT_SHA1_RAWSZ ;
 int load_idx (char*,int ,void*,size_t,struct packed_git*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 struct packed_git p;

 load_idx("fuzz-input", GIT_SHA1_RAWSZ, (void *)data, size, &p);

 return 0;
}
