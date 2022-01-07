; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_tracehook_report_syscall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_tracehook_report_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@PTRACE_SYSCALL_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32)* @tracehook_report_syscall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracehook_report_syscall(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 (...) @is_compat_task()
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 12, i32 7
  store i32 %10, i32* %5, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 %19, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PTRACE_SYSCALL_EXIT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = call i32 @tracehook_report_syscall_exit(%struct.pt_regs* %30, i32 0)
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %34 = call i64 @tracehook_report_syscall_entry(%struct.pt_regs* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = call i32 @forget_syscall(%struct.pt_regs* %37)
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 %41, i64* %47, align 8
  ret void
}

declare dso_local i64 @is_compat_task(...) #1

declare dso_local i32 @tracehook_report_syscall_exit(%struct.pt_regs*, i32) #1

declare dso_local i64 @tracehook_report_syscall_entry(%struct.pt_regs*) #1

declare dso_local i32 @forget_syscall(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
