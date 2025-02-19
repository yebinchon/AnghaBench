; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_cpuc_finish.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_core.c_intel_cpuc_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { %struct.intel_shared_regs* }
%struct.intel_shared_regs = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_cpuc_finish(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca %struct.cpu_hw_events*, align 8
  %3 = alloca %struct.intel_shared_regs*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %2, align 8
  %4 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %5 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %4, i32 0, i32 0
  %6 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %5, align 8
  store %struct.intel_shared_regs* %6, %struct.intel_shared_regs** %3, align 8
  %7 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %8 = icmp ne %struct.intel_shared_regs* %7, null
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %11 = getelementptr inbounds %struct.intel_shared_regs, %struct.intel_shared_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %16 = getelementptr inbounds %struct.intel_shared_regs, %struct.intel_shared_regs* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %9
  %21 = load %struct.intel_shared_regs*, %struct.intel_shared_regs** %3, align 8
  %22 = call i32 @kfree(%struct.intel_shared_regs* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %25 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %24, i32 0, i32 0
  store %struct.intel_shared_regs* null, %struct.intel_shared_regs** %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %2, align 8
  %28 = call i32 @free_excl_cntrs(%struct.cpu_hw_events* %27)
  ret void
}

declare dso_local i32 @kfree(%struct.intel_shared_regs*) #1

declare dso_local i32 @free_excl_cntrs(%struct.cpu_hw_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
