; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_min_perf_pct_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_min_perf_pct_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @min_perf_pct_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_perf_pct_min() #0 {
  %1 = alloca %struct.cpudata*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %4 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %3, i64 0
  %5 = load %struct.cpudata*, %struct.cpudata** %4, align 8
  store %struct.cpudata* %5, %struct.cpudata** %1, align 8
  %6 = load %struct.cpudata*, %struct.cpudata** %1, align 8
  %7 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %0
  %13 = load %struct.cpudata*, %struct.cpudata** %1, align 8
  %14 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 100
  %18 = load i32, i32* %2, align 4
  %19 = sdiv i32 %17, %18
  br label %21

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %12
  %22 = phi i32 [ %19, %12 ], [ 0, %20 ]
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
