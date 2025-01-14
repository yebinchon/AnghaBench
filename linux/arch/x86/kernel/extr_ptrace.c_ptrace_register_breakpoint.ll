; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_register_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_register_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.task_struct = type { i32 }
%struct.perf_event_attr = type { i64 }

@ptrace_triggered = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event* (%struct.task_struct*, i32, i32, i64, i32)* @ptrace_register_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event* @ptrace_register_breakpoint(%struct.task_struct* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.perf_event_attr, align 8
  %13 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = call i32 @ptrace_breakpoint_init(%struct.perf_event_attr* %12)
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %12, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @ptrace_fill_bp_fields(%struct.perf_event_attr* %12, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.perf_event* @ERR_PTR(i32 %24)
  store %struct.perf_event* %25, %struct.perf_event** %6, align 8
  br label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @ptrace_triggered, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = call %struct.perf_event* @register_user_hw_breakpoint(%struct.perf_event_attr* %12, i32 %27, i32* null, %struct.task_struct* %28)
  store %struct.perf_event* %29, %struct.perf_event** %6, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  ret %struct.perf_event* %31
}

declare dso_local i32 @ptrace_breakpoint_init(%struct.perf_event_attr*) #1

declare dso_local i32 @ptrace_fill_bp_fields(%struct.perf_event_attr*, i32, i32, i32) #1

declare dso_local %struct.perf_event* @ERR_PTR(i32) #1

declare dso_local %struct.perf_event* @register_user_hw_breakpoint(%struct.perf_event_attr*, i32, i32*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
