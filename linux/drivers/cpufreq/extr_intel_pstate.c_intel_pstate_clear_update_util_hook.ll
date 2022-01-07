; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_clear_update_util_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_intel_pstate.c_intel_pstate_clear_update_util_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudata = type { i32 }

@all_cpu_data = common dso_local global %struct.cpudata** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @intel_pstate_clear_update_util_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pstate_clear_update_util_hook(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpudata*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.cpudata**, %struct.cpudata*** @all_cpu_data, align 8
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.cpudata*, %struct.cpudata** %4, i64 %6
  %8 = load %struct.cpudata*, %struct.cpudata** %7, align 8
  store %struct.cpudata* %8, %struct.cpudata** %3, align 8
  %9 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %10 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %20

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @cpufreq_remove_update_util_hook(i32 %15)
  %17 = load %struct.cpudata*, %struct.cpudata** %3, align 8
  %18 = getelementptr inbounds %struct.cpudata, %struct.cpudata* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = call i32 (...) @synchronize_rcu()
  br label %20

20:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @cpufreq_remove_update_util_hook(i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
