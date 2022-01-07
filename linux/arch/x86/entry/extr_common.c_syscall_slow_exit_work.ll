; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_syscall_slow_exit_work.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/extr_common.c_syscall_slow_exit_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@_TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4
@_TIF_SINGLESTEP = common dso_local global i32 0, align 4
@_TIF_SYSCALL_EMU = common dso_local global i32 0, align 4
@_TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @syscall_slow_exit_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscall_slow_exit_work(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i32 @audit_syscall_exit(%struct.pt_regs* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @_TIF_SYSCALL_TRACEPOINT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @trace_sys_exit(%struct.pt_regs* %13, i32 %16)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @_TIF_SINGLESTEP, align 4
  %21 = load i32, i32* @_TIF_SYSCALL_EMU, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @_TIF_SINGLESTEP, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @unlikely(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @_TIF_SYSCALL_TRACE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %18
  %36 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @tracehook_report_syscall_exit(%struct.pt_regs* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @audit_syscall_exit(%struct.pt_regs*) #1

declare dso_local i32 @trace_sys_exit(%struct.pt_regs*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @tracehook_report_syscall_exit(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
