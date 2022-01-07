; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event, i32 }
%struct.hw_perf_event = type { i32, i32 }
%struct.nds32_pmu = type { i64 (%struct.perf_event*)*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nds32_pmu_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.nds32_pmu*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %10)
  store %struct.nds32_pmu* %11, %struct.nds32_pmu** %3, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  store %struct.hw_perf_event* %13, %struct.hw_perf_event** %4, align 8
  br label %14

14:                                               ; preds = %30, %1
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  %17 = call i64 @local64_read(i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %18, i32 0, i32 0
  %20 = load i64 (%struct.perf_event*)*, i64 (%struct.perf_event*)** %19, align 8
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = call i64 %20(%struct.perf_event* %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %24 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %23, i32 0, i32 1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @local64_cmpxchg(i32* %24, i64 %25, i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %14
  br label %14

31:                                               ; preds = %14
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load %struct.nds32_pmu*, %struct.nds32_pmu** %3, align 8
  %36 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %34, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = call i32 @local64_add(i64 %39, i32* %41)
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 0
  %46 = call i32 @local64_sub(i64 %43, i32* %45)
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
