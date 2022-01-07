; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_alter_er.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_mbox_alter_er.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32 }

@EXTRA_REG_NHMEX_M_ZDP_CTL_FVC = common dso_local global i32 0, align 4
@uncore_nhmex = common dso_local global i64 0, align 8
@NHMEX_M_PMON_ZDP_CTL_FVC_MASK = common dso_local global i32 0, align 4
@WSMEX_M_PMON_ZDP_CTL_FVC_MASK = common dso_local global i32 0, align 4
@NHMEX_M_PMON_CTL_INC_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @nhmex_mbox_alter_er to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nhmex_mbox_alter_er(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %7, align 8
  %14 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %14, i32 0, i32 1
  store %struct.hw_perf_event_extra* %15, %struct.hw_perf_event_extra** %8, align 8
  %16 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__BITS_VALUE(i32 %18, i32 0, i32 8)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @EXTRA_REG_NHMEX_M_ZDP_CTL_FVC, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* @uncore_nhmex, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 3, %46
  %48 = load i32, i32* %11, align 4
  %49 = shl i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %58

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 3, %54
  %56 = load i32, i32* %11, align 4
  %57 = ashr i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %42
  %59 = load i64, i64* @uncore_nhmex, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* @NHMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  %63 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %77

69:                                               ; preds = %58
  %70 = load i32, i32* @WSMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  %71 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %72 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %69, %61
  %78 = load i32, i32* @NHMEX_M_PMON_ZDP_CTL_FVC_MASK, align 4
  %79 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %80 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %78, %81
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %77
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NHMEX_M_PMON_CTL_INC_SEL_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %96 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %107

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @NHMEX_M_PMON_CTL_INC_SEL_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %104 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %99, %91
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %110 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 -256, %111
  %113 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %114 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %107, %77
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local i32 @__BITS_VALUE(i32, i32, i32) #1

declare dso_local i32 @NHMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32) #1

declare dso_local i32 @WSMEX_M_PMON_ZDP_CTL_FVC_EVENT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
