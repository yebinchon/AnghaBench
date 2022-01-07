; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_hw_breakpoint.c_hw_breakpoint_arch_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32 }
%struct.arch_hw_breakpoint = type { i32, i32, i32 }

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
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %20 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %34 [
    i32 131, label %22
    i32 130, label %32
    i32 129, label %33
  ]

22:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  %23 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %24 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %29 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %22
  br label %38

32:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %38

33:                                               ; preds = %18
  store i32 3, i32* %8, align 4
  br label %38

34:                                               ; preds = %18
  %35 = call i32 @WARN_ON_ONCE(i32 1)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %33, %32, %31
  %39 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %7, align 8
  %40 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %45, %34, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @arch_build_bp_info(%struct.perf_event*, %struct.perf_event_attr*, %struct.arch_hw_breakpoint*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
