; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440spe_fixup_memsize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm440spe_fixup_memsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCRN_MQ0_B0BAS = common dso_local global i32 0, align 4
@DCRN_MQ0_B1BAS = common dso_local global i32 0, align 4
@DCRN_MQ0_B2BAS = common dso_local global i32 0, align 4
@DCRN_MQ0_B3BAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibm440spe_fixup_memsize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @DCRN_MQ0_B0BAS, align 4
  %4 = call i32 @mfdcr(i32 %3)
  %5 = call i64 @ibm440spe_decode_bas(i32 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  store i64 %10, i64* %2, align 8
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32, i32* @DCRN_MQ0_B1BAS, align 4
  %13 = call i32 @mfdcr(i32 %12)
  %14 = call i64 @ibm440spe_decode_bas(i32 %13)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i64, i64* %1, align 8
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, i32* @DCRN_MQ0_B2BAS, align 4
  %22 = call i32 @mfdcr(i32 %21)
  %23 = call i64 @ibm440spe_decode_bas(i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i64, i64* %1, align 8
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %20
  %30 = load i32, i32* @DCRN_MQ0_B3BAS, align 4
  %31 = call i32 @mfdcr(i32 %30)
  %32 = call i64 @ibm440spe_decode_bas(i32 %31)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* %1, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @dt_fixup_memory(i32 0, i64 %39)
  ret void
}

declare dso_local i64 @ibm440spe_decode_bas(i32) #1

declare dso_local i32 @mfdcr(i32) #1

declare dso_local i32 @dt_fixup_memory(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
