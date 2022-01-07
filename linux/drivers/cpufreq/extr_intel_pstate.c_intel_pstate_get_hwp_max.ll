; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_hwp_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_get_hwp_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MSR_HWP_CAPABILITIES = common dso_local global i32 0, align 4
@all_cpu_data = common dso_local global %struct.TYPE_4__** null, align 8
@global = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @intel_pstate_get_hwp_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_get_hwp_max(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MSR_HWP_CAPABILITIES, align 4
  %10 = call i32 @rdmsrl_on_cpu(i32 %8, i32 %9, i32* %7)
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @all_cpu_data, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @WRITE_ONCE(i32 %17, i32 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @global, i32 0, i32 0), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @HWP_GUARANTEED_PERF(i32 %23)
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @HWP_HIGHEST_PERF(i32 %27)
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @HWP_HIGHEST_PERF(i32 %31)
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  ret void
}

declare dso_local i32 @rdmsrl_on_cpu(i32, i32, i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @HWP_GUARANTEED_PERF(i32) #1

declare dso_local i32 @HWP_HIGHEST_PERF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
