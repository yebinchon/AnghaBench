; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_dvma.c_dvma_map_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_dvma.c_dvma_map_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvma_map_iommu(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @dvma_btov(i64 %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %11, %13
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %19, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @dvma_page(i64 %20, i64 %21)
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = load i64, i64* %4, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %8, align 8
  br label %15

29:                                               ; preds = %15
  ret i32 0
}

declare dso_local i64 @dvma_btov(i64) #1

declare dso_local i32 @dvma_page(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
