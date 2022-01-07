
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_B ;
 int BPF_DW ;
 int BPF_H ;
 int BPF_W ;

__attribute__((used)) static int bpf_size_to_x86_bytes(int bpf_size)
{
 if (bpf_size == BPF_W)
  return 4;
 else if (bpf_size == BPF_H)
  return 2;
 else if (bpf_size == BPF_B)
  return 1;
 else if (bpf_size == BPF_DW)
  return 4;
 else
  return 0;
}
