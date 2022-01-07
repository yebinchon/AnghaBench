; ModuleID = '/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_encrypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @aesni256_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni256_encrypt(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call { i8*, i8* } asm sideeffect "movdqu ($2), %xmm1\0A\09pxor ($3), %xmm1\0A\09aesenc 0x10($3), %xmm1\0A\09aesenc 0x20($3), %xmm1\0A\09aesenc 0x30($3), %xmm1\0A\09aesenc 0x40($3), %xmm1\0A\09aesenc 0x50($3), %xmm1\0A\09aesenc 0x60($3), %xmm1\0A\09aesenc 0x70($3), %xmm1\0A\09aesenc 0x80($3), %xmm1\0A\09aesenc 0x90($3), %xmm1\0A\09aesenc 0xa0($3), %xmm1\0A\09aesenc 0xb0($3), %xmm1\0A\09aesenc 0xc0($3), %xmm1\0A\09aesenc 0xd0($3), %xmm1\0A\09aesenclast 0xe0($3), %xmm1\0A\09movdqu %xmm1, ($4)\0A\09", "=r,=r,0r,r,1r,~{xmm1},~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %9, i8* %10, i8* %11) #1, !srcloc !2
  %13 = extractvalue { i8*, i8* } %12, 0
  %14 = extractvalue { i8*, i8* } %12, 1
  store i8* %13, i8** %7, align 8
  store i8* %14, i8** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 292, i32 314, i32 344, i32 380, i32 416, i32 452, i32 488, i32 524, i32 560, i32 596, i32 632, i32 668, i32 704, i32 740, i32 776, i32 812, i32 852, i32 884}
