; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_do_syscall_trace_leave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_do_syscall_trace_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_syscall_trace_leave(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = call i32 @audit_syscall_exit(%struct.pt_regs* %4)
  %6 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %7 = call i32 @test_thread_flag(i32 %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @trace_sys_exit(%struct.pt_regs* %11, i32 %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @TIF_SINGLESTEP, align 4
  %18 = call i32 @test_thread_flag(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %23 = call i32 @test_thread_flag(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %16
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @tracehook_report_syscall_exit(%struct.pt_regs* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = call i32 (...) @user_enter()
  ret void
}

declare dso_local i32 @audit_syscall_exit(%struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @trace_sys_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @tracehook_report_syscall_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @user_enter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
