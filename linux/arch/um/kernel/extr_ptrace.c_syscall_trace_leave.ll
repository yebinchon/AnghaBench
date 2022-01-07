; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_ptrace.c_syscall_trace_leave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_ptrace.c_syscall_trace_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PT_DTRACE = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@PT_PTRACED = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @syscall_trace_leave(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @audit_syscall_exit(%struct.pt_regs* %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PT_DTRACE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = call i32 @send_sigtrap(i32* %15, i32 0)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %19 = call i32 @test_thread_flag(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %32

22:                                               ; preds = %17
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = call i32 @tracehook_report_syscall_exit(%struct.pt_regs* %23, i32 0)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @PT_PTRACED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @TIF_SIGPENDING, align 4
  %31 = call i32 @set_thread_flag(i32 %30)
  br label %32

32:                                               ; preds = %21, %29, %22
  ret void
}

declare dso_local i32 @audit_syscall_exit(%struct.pt_regs*) #1

declare dso_local i32 @send_sigtrap(i32*, i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @tracehook_report_syscall_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
