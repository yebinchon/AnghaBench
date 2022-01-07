; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c___dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c___dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@LOOP_TIMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Call Trace:\0A\00", align 1
@CONFIG_FRAME_POINTER = common dso_local global i32 0, align 4
@TASK_SIZE = common dso_local global i64 0, align 8
@LP_OFFSET = common dso_local global i64 0, align 8
@FP_OFFSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i64*)* @__dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dump(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load i32, i32* @LOOP_TIMES, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 @pr_emerg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @CONFIG_FRAME_POINTER, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %39, %14
  %16 = load i64*, i64** %4, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = call i32 @kstack_end(i8* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %4, align 8
  %24 = load i64, i64* %22, align 8
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @__kernel_text_address(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @ftrace_graph_ret_addr(%struct.task_struct* %29, i32* %7, i64 %30, i32* null)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @print_ip_sym(i64 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %40

39:                                               ; preds = %34
  br label %15

40:                                               ; preds = %38, %15
  br label %86

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i64*, i64** %4, align 8
  %44 = bitcast i64* %43 to i8*
  %45 = call i32 @kstack_end(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load i64*, i64** %4, align 8
  %49 = ptrtoint i64* %48 to i64
  %50 = and i64 %49, 3
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i64*, i64** %4, align 8
  %54 = ptrtoint i64* %53 to i64
  %55 = load i64, i64* @TASK_SIZE, align 8
  %56 = icmp uge i64 %54, %55
  br label %57

57:                                               ; preds = %52, %47, %42
  %58 = phi i1 [ false, %47 ], [ false, %42 ], [ %56, %52 ]
  br i1 %58, label %59, label %85

59:                                               ; preds = %57
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* @LP_OFFSET, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %5, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* @FP_OFFSET, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @__kernel_text_address(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @ftrace_graph_ret_addr(%struct.task_struct* %72, i32* %7, i64 %73, i32* null)
  store i64 %74, i64* %5, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32 @print_ip_sym(i64 %75)
  br label %77

77:                                               ; preds = %71, %59
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %85

82:                                               ; preds = %77
  %83 = load i64, i64* %8, align 8
  %84 = inttoptr i64 %83 to i64*
  store i64* %84, i64** %4, align 8
  br label %42

85:                                               ; preds = %81, %57
  br label %86

86:                                               ; preds = %85, %40
  %87 = call i32 @pr_emerg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_emerg(i8*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @kstack_end(i8*) #1

declare dso_local i64 @__kernel_text_address(i64) #1

declare dso_local i64 @ftrace_graph_ret_addr(%struct.task_struct*, i32*, i64, i32*) #1

declare dso_local i32 @print_ip_sym(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
