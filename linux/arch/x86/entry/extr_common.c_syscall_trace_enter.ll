; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_syscall_trace_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_syscall_trace_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32 }

@AUDIT_ARCH_I386 = common dso_local global i32 0, align 4
@AUDIT_ARCH_X86_64 = common dso_local global i32 0, align 4
@CONFIG_DEBUG_ENTRY = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@_TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@_TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@_TIF_SECCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*)* @syscall_trace_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall_trace_enter(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %8 = call i64 (...) @in_ia32_syscall()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @AUDIT_ARCH_I386, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @AUDIT_ARCH_X86_64, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %4, align 4
  %16 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %16, %struct.thread_info** %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load i32, i32* @CONFIG_DEBUG_ENTRY, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %22 = load i32, i32* @current, align 4
  %23 = call %struct.pt_regs* @task_pt_regs(i32 %22)
  %24 = icmp ne %struct.pt_regs* %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @READ_ONCE(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @_TIF_SYSCALL_TRACE, align 4
  %34 = load i32, i32* @_TIF_SYSCALL_EMU, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %27
  %39 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %40 = call i64 @tracehook_report_syscall_entry(%struct.pt_regs* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @_TIF_SYSCALL_EMU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  store i64 -1, i64* %2, align 8
  br label %74

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* @TIF_SYSCALL_TRACEPOINT, align 4
  %52 = call i32 @test_thread_flag(i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @trace_sys_enter(%struct.pt_regs* %56, i64 %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @do_audit_syscall_entry(%struct.pt_regs* %62, i32 %63)
  %65 = load i64, i64* %6, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i64 [ %65, %67 ], [ %71, %68 ]
  store i64 %73, i64* %2, align 8
  br label %74

74:                                               ; preds = %72, %48
  %75 = load i64, i64* %2, align 8
  ret i64 %75
}

declare dso_local i64 @in_ia32_syscall(...) #1

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @tracehook_report_syscall_entry(%struct.pt_regs*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @trace_sys_enter(%struct.pt_regs*, i64) #1

declare dso_local i32 @do_audit_syscall_entry(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
