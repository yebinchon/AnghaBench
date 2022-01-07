; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace_leave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_ptrace.c_do_syscall_trace_leave.c"
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
  %4 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %5 = call i32 @test_thread_flag(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = call i32 @regs_return_value(%struct.pt_regs* %9)
  %11 = call i32 @trace_sys_exit(%struct.pt_regs* %8, i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @TIF_SINGLESTEP, align 4
  %14 = call i32 @test_thread_flag(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %19 = call i32 @test_thread_flag(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %12
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @tracehook_report_syscall_exit(%struct.pt_regs* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @trace_sys_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @regs_return_value(%struct.pt_regs*) #1

declare dso_local i32 @tracehook_report_syscall_exit(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
