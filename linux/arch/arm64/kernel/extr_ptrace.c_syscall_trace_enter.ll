; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_syscall_trace_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_syscall_trace_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32*, i32 }

@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@PTRACE_SYSCALL_ENTER = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @syscall_trace_enter(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %5 = call i64 @test_thread_flag(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TIF_SYSCALL_EMU, align 4
  %9 = call i64 @test_thread_flag(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7, %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = load i32, i32* @PTRACE_SYSCALL_ENTER, align 4
  %14 = call i32 @tracehook_report_syscall(%struct.pt_regs* %12, i32 %13)
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = call i32 @in_syscall(%struct.pt_regs* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @TIF_SYSCALL_EMU, align 4
  %20 = call i64 @test_thread_flag(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %11
  store i32 -1, i32* %2, align 4
  br label %64

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %7
  %25 = call i32 @secure_computing(i32* null)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %64

28:                                               ; preds = %24
  %29 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %30 = call i64 @test_thread_flag(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @trace_sys_enter(%struct.pt_regs* %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @audit_syscall_entry(i32 %41, i32 %44, i32 %49, i32 %54, i32 %59)
  %61 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %38, %27, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @tracehook_report_syscall(%struct.pt_regs*, i32) #1

declare dso_local i32 @in_syscall(%struct.pt_regs*) #1

declare dso_local i32 @secure_computing(i32*) #1

declare dso_local i32 @trace_sys_enter(%struct.pt_regs*, i32) #1

declare dso_local i32 @audit_syscall_entry(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
