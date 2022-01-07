; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_perf_iommu_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_iommu.c_perf_iommu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.amd_iommu = type { i32 }

@IOMMU_PC_COUNTER_SRC_REG = common dso_local global i32 0, align 4
@IOMMU_PC_DEVID_MATCH_REG = common dso_local global i32 0, align 4
@IOMMU_PC_PASID_MATCH_REG = common dso_local global i32 0, align 4
@IOMMU_PC_DOMID_MATCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_iommu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_iommu_enable_event(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = call %struct.amd_iommu* @perf_event_2_iommu(%struct.perf_event* %8)
  store %struct.amd_iommu* %9, %struct.amd_iommu** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %4, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %19 = call i32 @GET_CSOURCE(%struct.hw_perf_event* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IOMMU_PC_COUNTER_SRC_REG, align 4
  %24 = call i32 @amd_iommu_pc_set_reg(%struct.amd_iommu* %20, i32 %21, i32 %22, i32 %23, i32* %7)
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %26 = call i32 @GET_DEVID_MASK(%struct.hw_perf_event* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %28 = call i32 @GET_DEVID(%struct.hw_perf_event* %27)
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 32
  %31 = or i32 %28, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = call i32 @BIT(i32 31)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IOMMU_PC_DEVID_MATCH_REG, align 4
  %43 = call i32 @amd_iommu_pc_set_reg(%struct.amd_iommu* %39, i32 %40, i32 %41, i32 %42, i32* %7)
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %45 = call i32 @GET_PASID_MASK(%struct.hw_perf_event* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %47 = call i32 @GET_PASID(%struct.hw_perf_event* %46)
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 32
  %50 = or i32 %47, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = call i32 @BIT(i32 31)
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %38
  %58 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IOMMU_PC_PASID_MATCH_REG, align 4
  %62 = call i32 @amd_iommu_pc_set_reg(%struct.amd_iommu* %58, i32 %59, i32 %60, i32 %61, i32* %7)
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %64 = call i32 @GET_DOMID_MASK(%struct.hw_perf_event* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %66 = call i32 @GET_DOMID(%struct.hw_perf_event* %65)
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %67, 32
  %69 = or i32 %66, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = call i32 @BIT(i32 31)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %72, %57
  %77 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @IOMMU_PC_DOMID_MATCH_REG, align 4
  %81 = call i32 @amd_iommu_pc_set_reg(%struct.amd_iommu* %77, i32 %78, i32 %79, i32 %80, i32* %7)
  ret void
}

declare dso_local %struct.amd_iommu* @perf_event_2_iommu(%struct.perf_event*) #1

declare dso_local i32 @GET_CSOURCE(%struct.hw_perf_event*) #1

declare dso_local i32 @amd_iommu_pc_set_reg(%struct.amd_iommu*, i32, i32, i32, i32*) #1

declare dso_local i32 @GET_DEVID_MASK(%struct.hw_perf_event*) #1

declare dso_local i32 @GET_DEVID(%struct.hw_perf_event*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @GET_PASID_MASK(%struct.hw_perf_event*) #1

declare dso_local i32 @GET_PASID(%struct.hw_perf_event*) #1

declare dso_local i32 @GET_DOMID_MASK(%struct.hw_perf_event*) #1

declare dso_local i32 @GET_DOMID(%struct.hw_perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
