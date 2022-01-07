; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_ptrace.c_do_syscall_trace_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_ptrace.c_do_syscall_trace_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

@TIF_SYSCALL_TRACE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@TIF_SYSCALL_TRACEPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_syscall_trace_enter(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load i32, i32* @TIF_SYSCALL_TRACE, align 4
  %6 = call i64 @test_thread_flag(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = call i32 @tracehook_report_syscall_entry(%struct.pt_regs* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @ENOSYS, align 8
  %12 = sub i64 0, %11
  %13 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 28
  store i64 %12, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 20
  store i64 -1, i64* %23, align 8
  store i64 -1, i64* %2, align 8
  br label %73

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i32 @secure_computing(i32* null)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 -1, i64* %2, align 8
  br label %73

29:                                               ; preds = %25
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 20
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, 4294967295
  %36 = trunc i64 %35 to i32
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 26
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, 4294967295
  %43 = trunc i64 %42 to i32
  %44 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 25
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, 4294967295
  %50 = trunc i64 %49 to i32
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 24
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, 4294967295
  %57 = trunc i64 %56 to i32
  %58 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 23
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, 4294967295
  %64 = trunc i64 %63 to i32
  %65 = call i32 @audit_syscall_entry(i32 %36, i32 %43, i32 %50, i32 %57, i32 %64)
  %66 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 20
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %2, align 8
  br label %73

73:                                               ; preds = %29, %28, %19
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @tracehook_report_syscall_entry(%struct.pt_regs*) #1

declare dso_local i32 @secure_computing(i32*) #1

declare dso_local i32 @audit_syscall_entry(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
