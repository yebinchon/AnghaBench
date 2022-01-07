; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_get_debugreg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_get_debugreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i64, i64, %struct.perf_event** }
%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HBP_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i32)* @ptrace_get_debugreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptrace_get_debugreg(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_event*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  store %struct.thread_struct* %10, %struct.thread_struct** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @HBP_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @HBP_NUM, align 4
  %17 = call i32 @array_index_nospec(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %19 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %18, i32 0, i32 2
  %20 = load %struct.perf_event**, %struct.perf_event*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %20, i64 %22
  %24 = load %struct.perf_event*, %struct.perf_event** %23, align 8
  store %struct.perf_event* %24, %struct.perf_event** %8, align 8
  %25 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %26 = icmp ne %struct.perf_event* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load %struct.perf_event*, %struct.perf_event** %8, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %27, %14
  br label %50

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %39 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %46 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %44, %41
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
