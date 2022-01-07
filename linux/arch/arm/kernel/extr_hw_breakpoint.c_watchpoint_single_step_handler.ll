; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_watchpoint_single_step_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_watchpoint_single_step_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.arch_hw_breakpoint = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@wp_on_reg = common dso_local global i32 0, align 4
@core_num_wrps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @watchpoint_single_step_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchpoint_single_step_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca %struct.arch_hw_breakpoint*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @wp_on_reg, align 4
  %8 = call %struct.perf_event** @this_cpu_ptr(i32 %7)
  store %struct.perf_event** %8, %struct.perf_event*** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @core_num_wrps, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %15, i64 %17
  %19 = load %struct.perf_event*, %struct.perf_event** %18, align 8
  store %struct.perf_event* %19, %struct.perf_event** %4, align 8
  %20 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %21 = icmp eq %struct.perf_event* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %42

23:                                               ; preds = %13
  %24 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %25 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %24)
  store %struct.arch_hw_breakpoint* %25, %struct.arch_hw_breakpoint** %6, align 8
  %26 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %27 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %42

32:                                               ; preds = %23
  %33 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %6, align 8
  %34 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %2, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %40 = call i32 @disable_single_step(%struct.perf_event* %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %41, %31, %22
  %43 = call i32 (...) @rcu_read_unlock()
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %9

47:                                               ; preds = %9
  ret void
}

declare dso_local %struct.perf_event** @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @disable_single_step(%struct.perf_event*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
