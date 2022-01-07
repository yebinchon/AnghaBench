; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_pmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.pmu = type { i32 }
%struct.cpu_hw_events = type { i32*, i64, i64 }

@cpu_hw_events = common dso_local global i32 0, align 4
@sparc_pmu = common dso_local global %struct.TYPE_3__* null, align 8
@pcr_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @sparc_pmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_pmu_disable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %6, %struct.cpu_hw_events** %3, align 8
  %7 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %71

12:                                               ; preds = %1
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %68, %12
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %17
  %24 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %25 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sparc_pmu, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %51 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pcr_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %61 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %58(i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %23
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %17

71:                                               ; preds = %11, %17
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
