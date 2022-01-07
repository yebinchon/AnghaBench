; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_enable_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_enable_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.cpu_hw_events = type { i32*, i32* }
%struct.hw_perf_event = type { i32 }

@sparc_pmu = common dso_local global %struct.TYPE_3__* null, align 8
@pcr_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpu_hw_events*, %struct.hw_perf_event*, i32)* @sparc_pmu_enable_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_pmu_enable_event(%struct.cpu_hw_events* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.cpu_hw_events*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mask_for_index(i32 %11)
  store i32 %12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %21 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @perf_event_get_enc(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @event_encoding(i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %46 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pcr_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %4, align 8
  %56 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %53(i32 %54, i32 %61)
  ret void
}

declare dso_local i32 @mask_for_index(i32) #1

declare dso_local i32 @perf_event_get_enc(i32) #1

declare dso_local i32 @event_encoding(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
