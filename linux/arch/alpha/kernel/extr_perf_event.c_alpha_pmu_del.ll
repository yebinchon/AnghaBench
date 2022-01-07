; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.cpu_hw_events = type { i32, i32*, i64, i32*, %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @alpha_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alpha_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %10, %struct.cpu_hw_events** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @perf_pmu_disable(i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %113, %2
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %116

25:                                               ; preds = %19
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %27, i32 0, i32 4
  %29 = load %struct.perf_event**, %struct.perf_event*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %29, i64 %31
  %33 = load %struct.perf_event*, %struct.perf_event** %32, align 8
  %34 = icmp eq %struct.perf_event* %26, %33
  br i1 %34, label %35, label %112

35:                                               ; preds = %25
  %36 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %37 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %50, %35
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %47 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %93

50:                                               ; preds = %43
  %51 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %52 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %51, i32 0, i32 4
  %53 = load %struct.perf_event**, %struct.perf_event*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %53, i64 %55
  %57 = load %struct.perf_event*, %struct.perf_event** %56, align 8
  %58 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %59 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %58, i32 0, i32 4
  %60 = load %struct.perf_event**, %struct.perf_event*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %60, i64 %63
  store %struct.perf_event* %57, %struct.perf_event** %64, align 8
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %73 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %80 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %87 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  br label %43

93:                                               ; preds = %43
  %94 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %95 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @alpha_perf_event_update(%struct.perf_event* %94, %struct.hw_perf_event* %95, i32 %96, i32 0)
  %98 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %99 = call i32 @perf_event_update_userpage(%struct.perf_event* %98)
  %100 = load i32, i32* %9, align 4
  %101 = zext i32 %100 to i64
  %102 = shl i64 1, %101
  %103 = xor i64 %102, -1
  %104 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %105 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %109 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %109, align 8
  br label %116

112:                                              ; preds = %25
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %19

116:                                              ; preds = %93, %19
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @local_irq_restore(i64 %117)
  %119 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %120 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @perf_pmu_enable(i32 %121)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @alpha_perf_event_update(%struct.perf_event*, %struct.hw_perf_event*, i32, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
