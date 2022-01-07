; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.arch_hw_breakpoint = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_breakpoint_arch_parse(%struct.perf_event* %0, %struct.perf_event_attr* %1, %struct.arch_hw_breakpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca %struct.arch_hw_breakpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.perf_event_attr* %1, %struct.perf_event_attr** %6, align 8
  store %struct.arch_hw_breakpoint* %2, %struct.arch_hw_breakpoint** %7, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %12 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %13 = call i32 @arch_build_bp_info(%struct.perf_event* %10, %struct.perf_event_attr* %11, %struct.arch_hw_breakpoint* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %22 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %28 [
    i32 131, label %24
    i32 130, label %25
    i32 129, label %26
    i32 128, label %27
  ]

24:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %30

25:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %30

26:                                               ; preds = %18
  store i32 3, i32* %8, align 4
  br label %30

27:                                               ; preds = %18
  store i32 7, i32* %8, align 4
  br label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %27, %26, %25, %24
  %31 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %32 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37, %28, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @arch_build_bp_info(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
