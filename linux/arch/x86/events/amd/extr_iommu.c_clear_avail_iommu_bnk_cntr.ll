; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_clear_avail_iommu_bnk_cntr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_clear_avail_iommu_bnk_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_amd_iommu = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_amd_iommu*, i32, i32)* @clear_avail_iommu_bnk_cntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_avail_iommu_bnk_cntr(%struct.perf_amd_iommu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_amd_iommu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_amd_iommu* %0, %struct.perf_amd_iommu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.perf_amd_iommu*, %struct.perf_amd_iommu** %5, align 8
  %13 = getelementptr inbounds %struct.perf_amd_iommu, %struct.perf_amd_iommu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  %15 = load %struct.perf_amd_iommu*, %struct.perf_amd_iommu** %5, align 8
  %16 = getelementptr inbounds %struct.perf_amd_iommu, %struct.perf_amd_iommu* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load %struct.perf_amd_iommu*, %struct.perf_amd_iommu** %5, align 8
  %36 = getelementptr inbounds %struct.perf_amd_iommu, %struct.perf_amd_iommu* %35, i32 0, i32 3
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @raw_spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = xor i64 %41, -1
  %43 = load %struct.perf_amd_iommu*, %struct.perf_amd_iommu** %5, align 8
  %44 = getelementptr inbounds %struct.perf_amd_iommu, %struct.perf_amd_iommu* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.perf_amd_iommu*, %struct.perf_amd_iommu** %5, align 8
  %48 = getelementptr inbounds %struct.perf_amd_iommu, %struct.perf_amd_iommu* %47, i32 0, i32 3
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @raw_spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %28, %25
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
