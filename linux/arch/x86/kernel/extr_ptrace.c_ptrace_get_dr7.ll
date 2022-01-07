; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_get_dr7.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_get_dr7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.arch_hw_breakpoint = type { i32, i32 }

@HBP_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_event**)* @ptrace_get_dr7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptrace_get_dr7(%struct.perf_event** %0) #0 {
  %2 = alloca %struct.perf_event**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.arch_hw_breakpoint*, align 8
  store %struct.perf_event** %0, %struct.perf_event*** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HBP_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.perf_event**, %struct.perf_event*** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %11, i64 %13
  %15 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %16 = icmp ne %struct.perf_event* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %10
  %18 = load %struct.perf_event**, %struct.perf_event*** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %18, i64 %20
  %22 = load %struct.perf_event*, %struct.perf_event** %21, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %17
  %28 = load %struct.perf_event**, %struct.perf_event*** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %28, i64 %30
  %32 = load %struct.perf_event*, %struct.perf_event** %31, align 8
  %33 = call %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event* %32)
  store %struct.arch_hw_breakpoint* %33, %struct.arch_hw_breakpoint** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %36 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %5, align 8
  %39 = getelementptr inbounds %struct.arch_hw_breakpoint, %struct.arch_hw_breakpoint* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @encode_dr7(i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %27, %17, %10
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %6

48:                                               ; preds = %6
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  ret i64 %50
}

declare dso_local %struct.arch_hw_breakpoint* @counter_arch_bp(%struct.perf_event*) #1

declare dso_local i32 @encode_dr7(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
