; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_set_breakpoint_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_set_breakpoint_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { %struct.perf_event** }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i64 }

@X86_BREAKPOINT_LEN_1 = common dso_local global i32 0, align 4
@X86_BREAKPOINT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i64)* @ptrace_set_breakpoint_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_set_breakpoint_addr(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_struct*, align 8
  %8 = alloca %struct.perf_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_event_attr, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  store %struct.thread_struct* %12, %struct.thread_struct** %7, align 8
  %13 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %14 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %13, i32 0, i32 0
  %15 = load %struct.perf_event**, %struct.perf_event*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %15, i64 %17
  %19 = load %struct.perf_event*, %struct.perf_event** %18, align 8
  store %struct.perf_event* %19, %struct.perf_event** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %21 = icmp ne %struct.perf_event* %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %3
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = load i32, i32* @X86_BREAKPOINT_LEN_1, align 4
  %25 = load i32, i32* @X86_BREAKPOINT_WRITE, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call %struct.perf_event* @ptrace_register_breakpoint(%struct.task_struct* %23, i32 %24, i32 %25, i64 %26, i32 1)
  store %struct.perf_event* %27, %struct.perf_event** %8, align 8
  %28 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %29 = call i64 @IS_ERR(%struct.perf_event* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %33 = call i32 @PTR_ERR(%struct.perf_event* %32)
  store i32 %33, i32* %9, align 4
  br label %42

34:                                               ; preds = %22
  %35 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %36 = load %struct.thread_struct*, %struct.thread_struct** %7, align 8
  %37 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %36, i32 0, i32 0
  %38 = load %struct.perf_event**, %struct.perf_event*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %38, i64 %40
  store %struct.perf_event* %35, %struct.perf_event** %41, align 8
  br label %42

42:                                               ; preds = %34, %31
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %45 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %44, i32 0, i32 0
  %46 = bitcast %struct.perf_event_attr* %10 to i8*
  %47 = bitcast %struct.perf_event_attr* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %10, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %51 = call i32 @modify_user_hw_breakpoint(%struct.perf_event* %50, %struct.perf_event_attr* %10)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %43, %42
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local %struct.perf_event* @ptrace_register_breakpoint(%struct.task_struct*, i32, i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @modify_user_hw_breakpoint(%struct.perf_event*, %struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
