; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_perf_iommu_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_perf_iommu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }
%struct.amd_iommu = type { i32 }

@IOMMU_PC_COUNTER_REG = common dso_local global i32 0, align 4
@COUNTER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_iommu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_iommu_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca %struct.amd_iommu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.hw_perf_event* %9, %struct.hw_perf_event** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = call %struct.amd_iommu* @perf_event_2_iommu(%struct.perf_event* %10)
  store %struct.amd_iommu* %11, %struct.amd_iommu** %7, align 8
  %12 = load %struct.amd_iommu*, %struct.amd_iommu** %7, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IOMMU_PC_COUNTER_REG, align 4
  %20 = call i64 @amd_iommu_pc_get_reg(%struct.amd_iommu* %12, i32 %15, i32 %18, i32 %19, i32* %3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %53

23:                                               ; preds = %1
  %24 = call i32 @GENMASK_ULL(i32 47, i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %28 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %27, i32 0, i32 0
  %29 = call i32 @local64_read(i32* %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @local64_cmpxchg(i32* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %53

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @COUNTER_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @COUNTER_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @COUNTER_SHIFT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 0
  %52 = call i32 @local64_add(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %38, %37, %22
  ret void
}

declare dso_local %struct.amd_iommu* @perf_event_2_iommu(%struct.perf_event*) #1

declare dso_local i64 @amd_iommu_pc_get_reg(%struct.amd_iommu*, i32, i32, i32, i32*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @local64_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @local64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
