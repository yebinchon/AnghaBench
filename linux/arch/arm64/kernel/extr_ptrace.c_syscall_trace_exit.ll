; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_syscall_trace_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_syscall_trace_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@PTRACE_SYSCALL_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall_trace_exit(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = call i32 @audit_syscall_exit(%struct.pt_regs* %3)
  %5 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %6 = call i64 @test_thread_flag(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = call i32 @regs_return_value(%struct.pt_regs* %10)
  %12 = call i32 @trace_sys_exit(%struct.pt_regs* %9, i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %15 = call i64 @test_thread_flag(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %19 = load i32, i32* @PTRACE_SYSCALL_EXIT, align 4
  %20 = call i32 @tracehook_report_syscall(%struct.pt_regs* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = call i32 @rseq_syscall(%struct.pt_regs* %22)
  ret void
}

declare dso_local i32 @audit_syscall_exit(%struct.pt_regs*) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @trace_sys_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @regs_return_value(%struct.pt_regs*) #1

declare dso_local i32 @tracehook_report_syscall(%struct.pt_regs*, i32) #1

declare dso_local i32 @rseq_syscall(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
