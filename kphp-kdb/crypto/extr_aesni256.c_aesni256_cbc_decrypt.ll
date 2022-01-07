; ModuleID = '/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/crypto/extr_aesni256.c_aesni256_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesni256_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aesni256_ctx*, i8*, i8*, i32, i8*)* @aesni256_cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aesni256_cbc_decrypt(%struct.aesni256_ctx* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.aesni256_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.aesni256_ctx* %0, %struct.aesni256_ctx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %27

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.aesni256_ctx*, %struct.aesni256_ctx** %6, align 8
  %21 = call i32 (%struct.aesni256_ctx*, ...) bitcast (i32 (...)* @align16 to i32 (%struct.aesni256_ctx*, ...)*)(%struct.aesni256_ctx* %20)
  %22 = load i8*, i8** %8, align 8
  %23 = call { i32, i8*, i8* } asm sideeffect "movdqu ($5), %xmm1\0A\091:\0A\09subl $$0x10, $3\0A\09movdqu ($4), %xmm2\0A\09pxor 0xe0($6), %xmm2\0A\09aesdec 0xd0($6), %xmm2\0A\09aesdec 0xc0($6), %xmm2\0A\09aesdec 0xb0($6), %xmm2\0A\09aesdec 0xa0($6), %xmm2\0A\09aesdec 0x90($6), %xmm2\0A\09aesdec 0x80($6), %xmm2\0A\09aesdec 0x70($6), %xmm2\0A\09aesdec 0x60($6), %xmm2\0A\09aesdec 0x50($6), %xmm2\0A\09aesdec 0x40($6), %xmm2\0A\09aesdec 0x30($6), %xmm2\0A\09aesdec 0x20($6), %xmm2\0A\09aesdec 0x10($6), %xmm2\0A\09aesdeclast 0x00($6), %xmm2\0A\09pxor %xmm1, %xmm2\0A\09movdqu ($4), %xmm1\0A\09movdqu %xmm2, ($7)\0A\09addq $$0x10, $4\0A\09addq $$0x10, $7\0A\09cmpl $$0x0f, $3\0A\09jg 1b\0A\09movdqu %xmm1, ($5)\0A\09", "=r,=r,=r,0,1r,r,r,2r,~{xmm1},~{xmm2},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %17, i8* %18, i8* %19, i32 %21, i8* %22) #2, !srcloc !2
  %24 = extractvalue { i32, i8*, i8* } %23, 0
  %25 = extractvalue { i32, i8*, i8* } %23, 1
  %26 = extractvalue { i32, i8*, i8* } %23, 2
  store i32 %24, i32* %9, align 4
  store i8* %25, i8** %11, align 8
  store i8* %26, i8** %12, align 8
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @align16(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 414, i32 436, i32 451, i32 478, i32 510, i32 544, i32 580, i32 616, i32 652, i32 688, i32 724, i32 760, i32 796, i32 832, i32 868, i32 904, i32 940, i32 976, i32 1012, i32 1052, i32 1084, i32 1116, i32 1148, i32 1176, i32 1203, i32 1234, i32 1252, i32 1284}
