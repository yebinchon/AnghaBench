
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int* jt; } ;
struct TYPE_5__ {unsigned int lc; unsigned int lp; unsigned int pb; } ;
struct TYPE_6__ {int * Probs; TYPE_1__ Properties; } ;
typedef int CProb ;
typedef TYPE_2__ CLzmaDecoderState ;


 int KERNEL_ENTRY ;
 unsigned int LZMA_RESULT_OK ;
 unsigned int LzmaDecode (TYPE_2__*,unsigned char*,unsigned int,unsigned int*,unsigned char*,unsigned int,unsigned int*) ;
 int _binary_vmlinux_lzma_end ;
 int _binary_vmlinux_lzma_start ;
 scalar_t__ buffer ;
 unsigned char* data ;
 TYPE_3__* gd ;
 unsigned int get_byte () ;
 int printf (char*,int,...) ;
 int puts (char*) ;
 void stub1 (int,int,int,int) ;

void entry(unsigned int arg0, unsigned int arg1,
 unsigned int arg2, unsigned int arg3)
{
 unsigned int i;
 unsigned int isize;
 unsigned int osize;
 int argc = arg0;
 char **argv = (char **)arg1;
 char **envp = (char **)arg2;

 CLzmaDecoderState vs;

 data = (unsigned char *)_binary_vmlinux_lzma_start;
 isize = _binary_vmlinux_lzma_end - _binary_vmlinux_lzma_start + 1;

 puts("\nLZMA kernel loader\n");

 printf("lzma data @ %#x - %#x\n", _binary_vmlinux_lzma_start, _binary_vmlinux_lzma_end);
 printf("load addr @ %#x\n\n", KERNEL_ENTRY);
 printf("jump table @ %#x\n", gd->jt[3]);


 i = get_byte();
 vs.Properties.lc = i % 9, i = i / 9;
 vs.Properties.lp = i % 5, vs.Properties.pb = i / 5;

 vs.Probs = (CProb *)buffer;


 data += 4;


 osize = ((unsigned int)get_byte()) +
  ((unsigned int)get_byte() << 8) +
  ((unsigned int)get_byte() << 16) +
  ((unsigned int)get_byte() << 24);


 data += 4;


 puts("\nDecompressing kernel...");
 if ((i = LzmaDecode(&vs,
 (unsigned char*)data, isize, &isize,
 (unsigned char*)KERNEL_ENTRY, osize, &osize)) == LZMA_RESULT_OK)
 {
  puts("success!\n");



  ((void (*)(int a0, int a1, int a2, int a3))KERNEL_ENTRY)(arg0, arg1, arg2, arg3);
 }
 puts("failure!\n");
}
