; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_ptrace_32.c_set_single_step.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_ptrace_32.c_set_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { %struct.perf_event** }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i64, i32, i32, i32 }

@HW_BREAKPOINT_LEN_2 = common dso_local global i32 0, align 4
@HW_BREAKPOINT_R = common dso_local global i32 0, align 4
@ptrace_triggered = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @set_single_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_single_step(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_struct*, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca %struct.perf_event_attr, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  store %struct.thread_struct* %11, %struct.thread_struct** %6, align 8
  %12 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %13 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %12, i32 0, i32 0
  %14 = load %struct.perf_event**, %struct.perf_event*** %13, align 8
  %15 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %14, i64 0
  %16 = load %struct.perf_event*, %struct.perf_event** %15, align 8
  store %struct.perf_event* %16, %struct.perf_event** %7, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %18 = icmp ne %struct.perf_event* %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %2
  %20 = call i32 @ptrace_breakpoint_init(%struct.perf_event_attr* %8)
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = load i32, i32* @HW_BREAKPOINT_LEN_2, align 4
  %24 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @HW_BREAKPOINT_R, align 4
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @ptrace_triggered, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = call %struct.perf_event* @register_user_hw_breakpoint(%struct.perf_event_attr* %8, i32 %27, i32* null, %struct.task_struct* %28)
  store %struct.perf_event* %29, %struct.perf_event** %7, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %31 = call i64 @IS_ERR(%struct.perf_event* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %35 = call i32 @PTR_ERR(%struct.perf_event* %34)
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %19
  %37 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %38 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %39 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %38, i32 0, i32 0
  %40 = load %struct.perf_event**, %struct.perf_event*** %39, align 8
  %41 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %40, i64 0
  store %struct.perf_event* %37, %struct.perf_event** %41, align 8
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = bitcast %struct.perf_event_attr* %8 to i8*
  %46 = bitcast %struct.perf_event_attr* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %51 = call i32 @modify_user_hw_breakpoint(%struct.perf_event* %50, %struct.perf_event_attr* %8)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %36
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %33
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ptrace_breakpoint_init(%struct.perf_event_attr*) #1

declare dso_local %struct.perf_event* @register_user_hw_breakpoint(%struct.perf_event_attr*, i32, i32*, %struct.task_struct*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @modify_user_hw_breakpoint(%struct.perf_event*, %struct.perf_event_attr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
