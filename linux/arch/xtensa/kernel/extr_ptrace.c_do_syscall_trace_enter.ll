; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@NO_SYSCALL = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_syscall_trace_enter(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %4 = call i64 @test_thread_flag(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i64 @tracehook_report_syscall_entry(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* @NO_SYSCALL, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %16 = call i64 @test_thread_flag(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %20 = load i32, i32* @current, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = call i32 @syscall_get_nr(i32 %20, %struct.pt_regs* %21)
  %23 = call i32 @trace_sys_enter(%struct.pt_regs* %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %14
  ret void
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @tracehook_report_syscall_entry(%struct.pt_regs*) #1

declare dso_local i32 @trace_sys_enter(%struct.pt_regs*, i32) #1

declare dso_local i32 @syscall_get_nr(i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
