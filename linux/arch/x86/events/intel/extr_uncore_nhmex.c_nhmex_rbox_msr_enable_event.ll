; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_msr_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_msr_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32 }

@NHMEX_PMON_CTL_EN_BIT0 = common dso_local global i32 0, align 4
@NHMEX_R_PMON_CTL_EV_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_msr_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_rbox_msr_enable_event(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca %struct.hw_perf_event_extra*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 3
  store %struct.hw_perf_event_extra* %13, %struct.hw_perf_event_extra** %6, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 2
  store %struct.hw_perf_event_extra* %15, %struct.hw_perf_event_extra** %7, align 8
  %16 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sdiv i32 %19, 6
  %21 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %22 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 4
  %27 = add nsw i32 %20, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, 6
  switch i32 %29, label %94 [
    i32 0, label %30
    i32 1, label %37
    i32 2, label %44
    i32 3, label %44
    i32 4, label %54
    i32 5, label %74
  ]

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32 %31)
  %33 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wrmsrl(i32 %32, i32 %35)
  br label %94

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32 %38)
  %40 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %41 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wrmsrl(i32 %39, i32 %42)
  br label %94

44:                                               ; preds = %2, %2
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @NHMEX_R_MSR_PORTN_QLX_CFG(i32 %45)
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %48, 6
  %50 = mul nsw i32 %49, 5
  %51 = add nsw i32 2, %50
  %52 = call i32 @uncore_shared_reg_config(%struct.intel_uncore_box* %47, i32 %51)
  %53 = call i32 @wrmsrl(i32 %46, i32 %52)
  br label %94

54:                                               ; preds = %2
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32 %55)
  %57 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %58 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 32
  %61 = call i32 @wrmsrl(i32 %56, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MATCH(i32 %62)
  %64 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %65 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wrmsrl(i32 %63, i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MASK(i32 %68)
  %70 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %71 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @wrmsrl(i32 %69, i32 %72)
  br label %94

74:                                               ; preds = %2
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32 %75)
  %77 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %78 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 32
  %81 = call i32 @wrmsrl(i32 %76, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MATCH(i32 %82)
  %84 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @wrmsrl(i32 %83, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MASK(i32 %88)
  %90 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %7, align 8
  %91 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wrmsrl(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %2, %74, %54, %44, %37, %30
  %95 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %96 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NHMEX_PMON_CTL_EN_BIT0, align 4
  %99 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %100 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NHMEX_R_PMON_CTL_EV_SEL_MASK, align 4
  %103 = and i32 %101, %102
  %104 = or i32 %98, %103
  %105 = call i32 @wrmsrl(i32 %97, i32 %104)
  ret void
}

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG0(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_IPERF_CFG1(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_QLX_CFG(i32) #1

declare dso_local i32 @uncore_shared_reg_config(%struct.intel_uncore_box*, i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MM_CFG(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MATCH(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET1_MASK(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MM_CFG(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MATCH(i32) #1

declare dso_local i32 @NHMEX_R_MSR_PORTN_XBR_SET2_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
