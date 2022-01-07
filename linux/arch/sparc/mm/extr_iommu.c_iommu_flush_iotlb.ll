; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_iommu.c_iommu_flush_iotlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_iommu.c_iommu_flush_iotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@viking_mxcc_present = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@viking_flush = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @iommu_flush_iotlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_flush_iotlb(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %9, %12
  %14 = call i64 @PAGE_ALIGN(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @PAGE_MASK, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @viking_mxcc_present, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %25, %20
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @viking_mxcc_flush_page(i64 %26)
  %28 = load i64, i64* @PAGE_SIZE, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %5, align 8
  br label %21

31:                                               ; preds = %21
  br label %60

32:                                               ; preds = %2
  %33 = load i64, i64* @viking_flush, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @viking_flush_page(i64 %41)
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %5, align 8
  br label %36

46:                                               ; preds = %36
  br label %59

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %52, %47
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @__flush_page_to_ram(i64 %53)
  %55 = load i64, i64* @PAGE_SIZE, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %5, align 8
  br label %48

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %31
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @viking_mxcc_flush_page(i64) #1

declare dso_local i32 @viking_flush_page(i64) #1

declare dso_local i32 @__flush_page_to_ram(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
