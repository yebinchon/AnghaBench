; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c___unwind_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_unwind_bc.c___unwind_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64, i32, i64, i64, i32, i32, i32, %struct.task_struct*, %struct.pt_regs*, %struct.stack_info }
%struct.stack_info = type { i8* }
%struct.task_struct = type { i32 }
%struct.pt_regs = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stack_frame = type { i32* }

@STACK_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@return_to_handler = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__unwind_start(%struct.unwind_state* %0, %struct.task_struct* %1, %struct.pt_regs* %2, i64 %3) #0 {
  %5 = alloca %struct.unwind_state*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stack_info*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stack_frame*, align 8
  %14 = alloca i64, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %16 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %15, i32 0, i32 9
  store %struct.stack_info* %16, %struct.stack_info** %9, align 8
  %17 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %18 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %17, i32 0, i32 0
  store i64* %18, i64** %10, align 8
  %19 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %20 = call i32 @memset(%struct.unwind_state* %19, i32 0, i32 72)
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %22, i32 0, i32 7
  store %struct.task_struct* %21, %struct.task_struct** %23, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %25 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %26 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %25, i32 0, i32 8
  store %struct.pt_regs* %24, %struct.pt_regs** %26, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %28 = icmp ne %struct.pt_regs* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %31 = call i64 @user_mode(%struct.pt_regs* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @STACK_TYPE_UNKNOWN, align 8
  %35 = load %struct.stack_info*, %struct.stack_info** %9, align 8
  %36 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %86

37:                                               ; preds = %29, %4
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %40 = load %struct.stack_info*, %struct.stack_info** %9, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = call i64 @get_stack_info(i64 %38, %struct.task_struct* %39, %struct.stack_info* %40, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.stack_info*, %struct.stack_info** %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @on_stack(%struct.stack_info* %45, i64 %46, i32 8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44, %37
  %50 = load i8*, i8** @STACK_TYPE_UNKNOWN, align 8
  %51 = load %struct.stack_info*, %struct.stack_info** %9, align 8
  %52 = getelementptr inbounds %struct.stack_info, %struct.stack_info* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %54 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %86

55:                                               ; preds = %44
  %56 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %57 = icmp ne %struct.pt_regs* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @READ_ONCE_NOCHECK(i32 %62)
  store i64 %63, i64* %14, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %73

64:                                               ; preds = %55
  %65 = load i64, i64* %8, align 8
  %66 = inttoptr i64 %65 to %struct.stack_frame*
  store %struct.stack_frame* %66, %struct.stack_frame** %13, align 8
  %67 = load %struct.stack_frame*, %struct.stack_frame** %13, align 8
  %68 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @READ_ONCE_NOCHECK(i32 %71)
  store i64 %72, i64* %14, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %64, %58
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %76 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %79 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %82 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %85 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %73, %49, %33
  ret void
}

declare dso_local i32 @memset(%struct.unwind_state*, i32, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @get_stack_info(i64, %struct.task_struct*, %struct.stack_info*, i64*) #1

declare dso_local i32 @on_stack(%struct.stack_info*, i64, i32) #1

declare dso_local i64 @READ_ONCE_NOCHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
