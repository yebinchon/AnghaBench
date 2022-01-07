; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_needs_sched_cb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_pebs_needs_sched_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_hw_events = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_hw_events*)* @pebs_needs_sched_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pebs_needs_sched_cb(%struct.cpu_hw_events* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpu_hw_events*, align 8
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %3, align 8
  %4 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %5 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %14 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %3, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ false, %12 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
