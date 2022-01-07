; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.cpu_hw_events = type { i32, i32*, i32*, %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @sparc_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %8, %struct.cpu_hw_events** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @local_irq_save(i64 %9)
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %89, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %11
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %20 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %19, i32 0, i32 3
  %21 = load %struct.perf_event**, %struct.perf_event*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %21, i64 %23
  %25 = load %struct.perf_event*, %struct.perf_event** %24, align 8
  %26 = icmp eq %struct.perf_event* %18, %25
  br i1 %26, label %27, label %88

27:                                               ; preds = %17
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = load i32, i32* @PERF_EF_UPDATE, align 4
  %30 = call i32 @sparc_pmu_stop(%struct.perf_event* %28, i32 %29)
  br label %31

31:                                               ; preds = %38, %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %35 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %31
  %39 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %40 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %39, i32 0, i32 3
  %41 = load %struct.perf_event**, %struct.perf_event*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %41, i64 %43
  %45 = load %struct.perf_event*, %struct.perf_event** %44, align 8
  %46 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %47 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %46, i32 0, i32 3
  %48 = load %struct.perf_event**, %struct.perf_event*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %48, i64 %51
  store %struct.perf_event* %45, %struct.perf_event** %52, align 8
  %53 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %54 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %61 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %68 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %73, i32* %80, align 4
  br label %31

81:                                               ; preds = %31
  %82 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %83 = call i32 @perf_event_update_userpage(%struct.perf_event* %82)
  %84 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %85 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 8
  br label %92

88:                                               ; preds = %17
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %11

92:                                               ; preds = %81, %11
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sparc_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
