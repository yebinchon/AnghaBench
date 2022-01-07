; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_write_dr7.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ptrace.c_ptrace_write_dr7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { %struct.perf_event** }
%struct.perf_event = type { i32 }

@DR_CONTROL_RESERVED = common dso_local global i64 0, align 8
@HBP_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64)* @ptrace_write_dr7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_write_dr7(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.perf_event*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  store %struct.thread_struct* %16, %struct.thread_struct** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @DR_CONTROL_RESERVED, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %22 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %21, i32 0, i32 0
  %23 = load %struct.perf_event**, %struct.perf_event*** %22, align 8
  %24 = call i64 @ptrace_get_dr7(%struct.perf_event** %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %90, %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %80, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HBP_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @decode_dr7(i64 %31, i32 %32, i32* %11, i32* %12)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %13, align 4
  %37 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %38 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %37, i32 0, i32 0
  %39 = load %struct.perf_event**, %struct.perf_event*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %39, i64 %41
  %43 = load %struct.perf_event*, %struct.perf_event** %42, align 8
  store %struct.perf_event* %43, %struct.perf_event** %14, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %45 = icmp ne %struct.perf_event* %44, null
  br i1 %45, label %70, label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %80

50:                                               ; preds = %46
  %51 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.perf_event* @ptrace_register_breakpoint(%struct.task_struct* %51, i32 %52, i32 %53, i32 0, i32 %54)
  store %struct.perf_event* %55, %struct.perf_event** %14, align 8
  %56 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %57 = call i64 @IS_ERR(%struct.perf_event* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %61 = call i32 @PTR_ERR(%struct.perf_event* %60)
  store i32 %61, i32* %9, align 4
  br label %83

62:                                               ; preds = %50
  %63 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %64 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %65 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %64, i32 0, i32 0
  %66 = load %struct.perf_event**, %struct.perf_event*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %66, i64 %68
  store %struct.perf_event* %63, %struct.perf_event** %69, align 8
  br label %80

70:                                               ; preds = %30
  %71 = load %struct.perf_event*, %struct.perf_event** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ptrace_modify_breakpoint(%struct.perf_event* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %83

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %62, %49
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %26

83:                                               ; preds = %78, %59, %26
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @WARN_ON(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i64, i64* %6, align 8
  store i64 %92, i64* %4, align 8
  store i32 1, i32* %7, align 4
  br label %25

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %10, align 4
  ret i32 %94
}

declare dso_local i64 @ptrace_get_dr7(%struct.perf_event**) #1

declare dso_local i32 @decode_dr7(i64, i32, i32*, i32*) #1

declare dso_local %struct.perf_event* @ptrace_register_breakpoint(%struct.task_struct*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

declare dso_local i32 @ptrace_modify_breakpoint(%struct.perf_event*, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
