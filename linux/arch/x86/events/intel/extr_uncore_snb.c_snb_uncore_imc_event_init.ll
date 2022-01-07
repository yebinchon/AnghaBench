; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_uncore_imc_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snb.c_snb_uncore_imc_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.hw_perf_event, i32, %struct.intel_uncore_box*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.hw_perf_event = type { i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.intel_uncore_box = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.intel_uncore_pmu = type { i64 }

@SNB_UNCORE_PCI_IMC_EVENT_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_EV_CAP_READ_ACTIVE_PKG = common dso_local global i32 0, align 4
@EXTRA_REG_NONE = common dso_local global i8* null, align 8
@SNB_UNCORE_PCI_IMC_DATA_READS_BASE = common dso_local global i32 0, align 4
@UNCORE_PMC_IDX_FREERUNNING = common dso_local global i32 0, align 4
@SNB_UNCORE_PCI_IMC_DATA_WRITES_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @snb_uncore_imc_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snb_uncore_imc_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.intel_uncore_pmu*, align 8
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %6, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SNB_UNCORE_PCI_IMC_EVENT_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %150

31:                                               ; preds = %1
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = call %struct.intel_uncore_pmu* @uncore_event_to_pmu(%struct.perf_event* %32)
  store %struct.intel_uncore_pmu* %33, %struct.intel_uncore_pmu** %4, align 8
  %34 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %35 = getelementptr inbounds %struct.intel_uncore_pmu, %struct.intel_uncore_pmu* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOENT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %150

41:                                               ; preds = %31
  %42 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %150

49:                                               ; preds = %41
  %50 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %51 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %150

58:                                               ; preds = %49
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %150

66:                                               ; preds = %58
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SNB_UNCORE_PCI_IMC_EVENT_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %66
  %79 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %80 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %81 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.intel_uncore_box* @uncore_pmu_to_box(%struct.intel_uncore_pmu* %79, i64 %82)
  store %struct.intel_uncore_box* %83, %struct.intel_uncore_box** %5, align 8
  %84 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %85 = icmp ne %struct.intel_uncore_box* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %88 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %78
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %150

94:                                               ; preds = %86
  %95 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %96 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %99 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %101 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %102 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %101, i32 0, i32 3
  store %struct.intel_uncore_box* %100, %struct.intel_uncore_box** %102, align 8
  %103 = load i32, i32* @PERF_EV_CAP_READ_ACTIVE_PKG, align 4
  %104 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %109 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 8
  %111 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %112 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %112, i32 0, i32 1
  store i64 -1, i64* %113, align 8
  %114 = load i8*, i8** @EXTRA_REG_NONE, align 8
  %115 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %116 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load i8*, i8** @EXTRA_REG_NONE, align 8
  %120 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %121 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  %124 = load i32, i32* %7, align 4
  switch i32 %124, label %131 [
    i32 129, label %125
    i32 128, label %128
  ]

125:                                              ; preds = %94
  %126 = load i32, i32* @SNB_UNCORE_PCI_IMC_DATA_READS_BASE, align 4
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @UNCORE_PMC_IDX_FREERUNNING, align 4
  store i32 %127, i32* %8, align 4
  br label %134

128:                                              ; preds = %94
  %129 = load i32, i32* @SNB_UNCORE_PCI_IMC_DATA_WRITES_BASE, align 4
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* @UNCORE_PMC_IDX_FREERUNNING, align 4
  store i32 %130, i32* %8, align 4
  br label %134

131:                                              ; preds = %94
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %150

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %137 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %141 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, 1
  %145 = shl i32 %144, 8
  %146 = or i32 %145, 4351
  %147 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %148 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %134, %131, %91, %75, %63, %55, %46, %38, %28
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.intel_uncore_pmu* @uncore_event_to_pmu(%struct.perf_event*) #1

declare dso_local %struct.intel_uncore_box* @uncore_pmu_to_box(%struct.intel_uncore_pmu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
