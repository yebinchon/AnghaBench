; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_update_tfa_sched.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_update_tfa_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_tfa_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tfa_sched(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpu_hw_events*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %4, %struct.cpu_hw_events** %3, align 8
  %5 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %6 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @test_bit(i32 3, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 (...) @x86_get_pmu()
  %12 = call i32 @perf_pmu_resched(i32 %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @perf_pmu_resched(i32) #1

declare dso_local i32 @x86_get_pmu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
