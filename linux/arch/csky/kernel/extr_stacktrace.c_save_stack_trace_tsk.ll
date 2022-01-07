; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_stacktrace.c_save_stack_trace_tsk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_stacktrace.c_save_stack_trace_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_trace = type { i32, i64*, i64, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@THREAD_MASK = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_tsk(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %14 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %15 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %19 = icmp eq %struct.task_struct* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i64* asm sideeffect "mov $0, r8\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64* %21, i64** %5, align 8
  store i32 1, i32* %10, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i64 @thread_saved_fp(%struct.task_struct* %23)
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %5, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i64*, i64** %5, align 8
  %28 = ptrtoint i64* %27 to i64
  %29 = load i64, i64* @THREAD_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64* %32, i64** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @THREAD_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %7, align 8
  br label %37

37:                                               ; preds = %95, %26
  %38 = load i64*, i64** %5, align 8
  %39 = load i64*, i64** %6, align 8
  %40 = icmp ugt i64* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64*, i64** %5, align 8
  %43 = load i64*, i64** %7, align 8
  %44 = icmp ult i64* %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %98

47:                                               ; preds = %45
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @__kernel_text_address(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %98

58:                                               ; preds = %47
  %59 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i64 @ftrace_graph_ret_addr(%struct.task_struct* %59, i32* %11, i64 %60, i32* null)
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @in_sched_functions(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  br label %94

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %78 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %81 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds i64, i64* %79, i64 %82
  store i64 %76, i64* %84, align 8
  %85 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %86 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %89 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %98

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %72
  br label %95

95:                                               ; preds = %94, %65
  %96 = load i64, i64* %13, align 8
  %97 = inttoptr i64 %96 to i64*
  store i64* %97, i64** %5, align 8
  br label %37

98:                                               ; preds = %92, %57, %45
  ret void
}

declare dso_local i64 @thread_saved_fp(%struct.task_struct*) #1

declare dso_local i32 @__kernel_text_address(i64) #1

declare dso_local i64 @ftrace_graph_ret_addr(%struct.task_struct*, i32*, i64, i32*) #1

declare dso_local i32 @in_sched_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 840}
