; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64* }
%struct.pt_regs = type { i32 }
%struct.cpu_hw_events = type { i32, i32*, i32, %struct.perf_event** }
%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }

@irq_pmi_count = common dso_local global i32 0, align 4
@cpu_hw_events = common dso_local global i32 0, align 4
@PERFMON_CMD_DISABLE = common dso_local global i32 0, align 4
@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@irq_err_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PMI: silly index %ld\0A\00", align 1
@PERFMON_CMD_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PMI: No event at index %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*)* @alpha_perf_event_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_perf_event_irq_handler(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.perf_sample_data, align 4
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.hw_perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %11 = load i32, i32* @irq_pmi_count, align 4
  %12 = call i32 @__this_cpu_inc(i32 %11)
  %13 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %13, %struct.cpu_hw_events** %5, align 8
  %14 = load i32, i32* @PERFMON_CMD_DISABLE, align 4
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wrperfmon(i32 %14, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load i32, i32* @irq_err_count, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @irq_err_count, align 4
  %30 = load i64, i64* %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @pr_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wrperfmon(i32 %33, i32 %36)
  br label %140

38:                                               ; preds = %2
  %39 = load i64, i64* %3, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %59, %38
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %44 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %62

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %41

62:                                               ; preds = %57, %41
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %65 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %62
  %72 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %73 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %74 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @wrperfmon(i32 %72, i32 %75)
  br label %140

77:                                               ; preds = %62
  %78 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %79 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %78, i32 0, i32 3
  %80 = load %struct.perf_event**, %struct.perf_event*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %80, i64 %82
  %84 = load %struct.perf_event*, %struct.perf_event** %83, align 8
  store %struct.perf_event* %84, %struct.perf_event** %7, align 8
  %85 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %86 = icmp ne %struct.perf_event* %85, null
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %77
  %92 = load i32, i32* @irq_err_count, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @irq_err_count, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %97 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %98 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @wrperfmon(i32 %96, i32 %99)
  br label %140

101:                                              ; preds = %77
  %102 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %103 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %102, i32 0, i32 0
  store %struct.hw_perf_event* %103, %struct.hw_perf_event** %8, align 8
  %104 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %105 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @alpha_perf_event_update(%struct.perf_event* %104, %struct.hw_perf_event* %105, i32 %106, i64 %114)
  %116 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %117 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %6, i32 0, i32 %118)
  %120 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %121 = load %struct.hw_perf_event*, %struct.hw_perf_event** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i64 @alpha_perf_event_set_period(%struct.perf_event* %120, %struct.hw_perf_event* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %101
  %126 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %127 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %128 = call i64 @perf_event_overflow(%struct.perf_event* %126, %struct.perf_sample_data* %6, %struct.pt_regs* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %132 = call i32 @alpha_pmu_stop(%struct.perf_event* %131, i32 0)
  br label %133

133:                                              ; preds = %130, %125
  br label %134

134:                                              ; preds = %133, %101
  %135 = load i32, i32* @PERFMON_CMD_ENABLE, align 4
  %136 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %137 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @wrperfmon(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %91, %71, %27
  ret void
}

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @wrperfmon(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @alpha_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*, i32, i64) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i64 @alpha_perf_event_set_period(%struct.perf_event*, %struct.hw_perf_event*, i32) #1

declare dso_local i64 @perf_event_overflow(%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*) #1

declare dso_local i32 @alpha_pmu_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
