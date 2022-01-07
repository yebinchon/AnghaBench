; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_check_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.perf_event**, i64*, i32)* }
%struct.perf_event = type { i32 }

@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event**, i64*, i32)* @alpha_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_check_constraints(%struct.perf_event** %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.perf_event** %0, %struct.perf_event*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 -1, i32* %4, align 4
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32 (%struct.perf_event**, i64*, i32)*, i32 (%struct.perf_event**, i64*, i32)** %20, align 8
  %22 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 %21(%struct.perf_event** %22, i64* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %18, %17, %10
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
