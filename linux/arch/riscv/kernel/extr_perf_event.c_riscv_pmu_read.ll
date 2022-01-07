; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_pmu_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_pmu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }

@riscv_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @riscv_pmu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riscv_pmu_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %3, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  %17 = call i64 @local64_read(i32* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @read_counter(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @local64_cmpxchg(i32* %21, i64 %22, i64 %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %14, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @riscv_pmu, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = shl i64 1, %35
  %37 = sub i64 %36, 1
  %38 = and i64 %32, %37
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = call i32 @local64_add(i64 %39, i32* %41)
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @read_counter(i32) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
