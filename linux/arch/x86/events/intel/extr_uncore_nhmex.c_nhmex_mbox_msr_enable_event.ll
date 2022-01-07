; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_msr_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_msr_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i64, i64 }

@EXTRA_REG_NONE = common dso_local global i64 0, align 8
@NHMEX_M_PMON_ADDR_MATCH_MASK = common dso_local global i32 0, align 4
@NHMEX_M_PMON_ADDR_MASK_MASK = common dso_local global i32 0, align 4
@NHMEX_M_PMON_ADDR_MASK_SHIFT = common dso_local global i32 0, align 4
@NHMEX_M_PMON_MM_CFG_EN = common dso_local global i32 0, align 4
@NHMEX_PMON_CTL_EN_BIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_mbox_msr_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_mbox_msr_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %5, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 3
  store %struct.hw_perf_event_extra* %12, %struct.hw_perf_event_extra** %6, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 2
  store %struct.hw_perf_event_extra* %14, %struct.hw_perf_event_extra** %7, align 8
  %15 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @__BITS_VALUE(i64 %17, i32 0, i32 8)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @__BITS_VALUE(i64 %24, i32 0, i32 16)
  %26 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box* %26, i32 %27)
  %29 = call i32 @wrmsrl(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %21, %2
  %31 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %32 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @__BITS_VALUE(i64 %33, i32 1, i32 8)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @__BITS_VALUE(i64 %40, i32 1, i32 16)
  %42 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box* %42, i32 %43)
  %45 = call i32 @wrmsrl(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %30
  %47 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EXTRA_REG_NONE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %99

52:                                               ; preds = %46
  %53 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %54 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @wrmsrl(i32 %56, i32 0)
  %58 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %59 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, -1
  br i1 %61, label %62, label %98

62:                                               ; preds = %52
  %63 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %69 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @NHMEX_M_PMON_ADDR_MATCH_MASK, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @wrmsrl(i32 %67, i32 %74)
  %76 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 2
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @NHMEX_M_PMON_ADDR_MASK_MASK, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %84 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @NHMEX_M_PMON_ADDR_MASK_SHIFT, align 4
  %87 = zext i32 %86 to i64
  %88 = lshr i64 %85, %87
  %89 = and i64 %82, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @wrmsrl(i32 %80, i32 %90)
  %92 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* @NHMEX_M_PMON_MM_CFG_EN, align 4
  %97 = call i32 @wrmsrl(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %62, %52
  br label %99

99:                                               ; preds = %98, %46
  %100 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %101 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %104 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NHMEX_PMON_CTL_EN_BIT0, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @wrmsrl(i32 %102, i32 %107)
  ret void
}

declare dso_local i32 @__BITS_VALUE(i64, i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @nhmex_mbox_shared_reg_config(%struct.intel_uncore_box*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
