; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_do_syscall_trace_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_ptrace.c_do_syscall_trace_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32* }
%struct.TYPE_2__ = type { i32 }

@_TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@_TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@NR_syscalls = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_syscall_trace_enter(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = call i32 (...) @user_exit()
  %7 = call %struct.TYPE_2__* (...) @current_thread_info()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @READ_ONCE(i32 %9)
  %11 = load i32, i32* @_TIF_SYSCALL_EMU, align 4
  %12 = load i32, i32* @_TIF_SYSCALL_TRACE, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = call i32 @tracehook_report_syscall_entry(%struct.pt_regs* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @_TIF_SYSCALL_EMU, align 4
  %22 = and i32 %20, %21
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i64 -1, i64* %2, align 8
  br label %99

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %91

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %33 = call i64 @do_seccomp(%struct.pt_regs* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 -1, i64* %2, align 8
  br label %99

36:                                               ; preds = %31
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NR_syscalls, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %91

45:                                               ; preds = %36
  %46 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %47 = call i32 @test_thread_flag(i32 %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @trace_sys_enter(%struct.pt_regs* %51, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @audit_syscall_entry(i32 %63, i32 %68, i32 %73, i32 %78, i32 %83)
  %85 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %2, align 8
  br label %99

91:                                               ; preds = %44, %29
  %92 = load i64, i64* @ENOSYS, align 8
  %93 = sub nsw i64 0, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %96 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  store i32 %94, i32* %98, align 4
  store i64 -1, i64* %2, align 8
  br label %99

99:                                               ; preds = %91, %58, %35, %25
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i32 @user_exit(...) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @current_thread_info(...) #1

declare dso_local i32 @tracehook_report_syscall_entry(%struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @do_seccomp(%struct.pt_regs*) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @trace_sys_enter(%struct.pt_regs*, i32) #1

declare dso_local i32 @audit_syscall_entry(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
