; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_stacktrace.c_save_stack_trace_tsk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_stacktrace.c_save_stack_trace_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.stack_trace = type { i32, i64*, i64, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@LP_OFFSET = common dso_local global i64 0, align 8
@FP_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_stack_trace_tsk(%struct.task_struct* %0, %struct.stack_trace* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.stack_trace*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.stack_trace* %1, %struct.stack_trace** %4, align 8
  %11 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %12 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %16 = icmp eq %struct.task_struct* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i64* asm sideeffect "\09ori\09$0, $$fp, #0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64* %18, i64** %5, align 8
  store i32 1, i32* %7, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call i64 @thread_saved_fp(%struct.task_struct* %20)
  %22 = inttoptr i64 %21 to i64*
  store i64* %22, i64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %17
  br label %24

24:                                               ; preds = %90, %23
  %25 = load i64*, i64** %5, align 8
  %26 = call i32 @kstack_end(i64* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = load i64*, i64** %5, align 8
  %30 = ptrtoint i64* %29 to i64
  %31 = and i64 %30, 3
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* @TASK_SIZE, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = icmp uge i64* %34, %36
  br label %38

38:                                               ; preds = %33, %28, %24
  %39 = phi i1 [ false, %28 ], [ false, %24 ], [ %37, %33 ]
  br i1 %39, label %40, label %93

40:                                               ; preds = %38
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* @LP_OFFSET, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i64, i64* @FP_OFFSET, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @__kernel_text_address(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %93

53:                                               ; preds = %40
  %54 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @ftrace_graph_ret_addr(%struct.task_struct* %54, i32* %8, i64 %55, i32* null)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @in_sched_functions(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %6, align 4
  br label %89

70:                                               ; preds = %64
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %73 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %76 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 %71, i64* %79, align 8
  %80 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %81 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.stack_trace*, %struct.stack_trace** %4, align 8
  %84 = getelementptr inbounds %struct.stack_trace, %struct.stack_trace* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %93

88:                                               ; preds = %70
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i64, i64* %10, align 8
  %92 = inttoptr i64 %91 to i64*
  store i64* %92, i64** %5, align 8
  br label %24

93:                                               ; preds = %87, %52, %38
  ret void
}

declare dso_local i64 @thread_saved_fp(%struct.task_struct*) #1

declare dso_local i32 @kstack_end(i64*) #1

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
!2 = !{i32 846}
