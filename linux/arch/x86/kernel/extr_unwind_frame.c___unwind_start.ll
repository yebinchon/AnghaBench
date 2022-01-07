; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c___unwind_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_frame.c___unwind_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i64*, i64*, %struct.TYPE_3__, i32, %struct.task_struct*, %struct.pt_regs* }
%struct.TYPE_3__ = type { i32 }
%struct.task_struct = type { i32 }
%struct.pt_regs = type { i64, i64 }

@STACK_TYPE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__unwind_start(%struct.unwind_state* %0, %struct.task_struct* %1, %struct.pt_regs* %2, i64* %3) #0 {
  %5 = alloca %struct.unwind_state*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %11 = call i32 @memset(%struct.unwind_state* %10, i32 0, i32 40)
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %14 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %13, i32 0, i32 4
  store %struct.task_struct* %12, %struct.task_struct** %14, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %16 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %17 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %16, i32 0, i32 5
  store %struct.pt_regs* %15, %struct.pt_regs** %17, align 8
  %18 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %19 = icmp ne %struct.pt_regs* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %22 = call i64 @user_mode(%struct.pt_regs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @STACK_TYPE_UNKNOWN, align 4
  %26 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %27 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %99

29:                                               ; preds = %20, %4
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %32 = call i64* @get_frame_pointer(%struct.task_struct* %30, %struct.pt_regs* %31)
  store i64* %32, i64** %9, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %34 = icmp ne %struct.pt_regs* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i64*
  %45 = load i64*, i64** %8, align 8
  %46 = icmp uge i64* %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load i64*, i64** %9, align 8
  %49 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %50 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %49, i32 0, i32 0
  store i64* %48, i64** %50, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = getelementptr inbounds i64, i64* %54, i64 -1
  store i64* %55, i64** %9, align 8
  br label %56

56:                                               ; preds = %47, %40, %35, %29
  %57 = load i64*, i64** %9, align 8
  %58 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %59 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %58, i32 0, i32 4
  %60 = load %struct.task_struct*, %struct.task_struct** %59, align 8
  %61 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %62 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %61, i32 0, i32 2
  %63 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %64 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %63, i32 0, i32 3
  %65 = call i32 @get_stack_info(i64* %57, %struct.task_struct* %60, %struct.TYPE_3__* %62, i32* %64)
  %66 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = call i32 @update_stack_state(%struct.unwind_state* %66, i64* %67)
  br label %69

69:                                               ; preds = %96, %56
  %70 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %71 = call i32 @unwind_done(%struct.unwind_state* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %69
  %74 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %75 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %74, i32 0, i32 2
  %76 = load i64*, i64** %8, align 8
  %77 = call i32 @on_stack(%struct.TYPE_3__* %75, i64* %76, i32 8)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %81 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %86 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64*, i64** %8, align 8
  %89 = icmp ult i64* %87, %88
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ false, %79 ], [ %89, %84 ]
  br label %92

92:                                               ; preds = %90, %73
  %93 = phi i1 [ true, %73 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %69
  %95 = phi i1 [ false, %69 ], [ %93, %92 ]
  br i1 %95, label %96, label %99

96:                                               ; preds = %94
  %97 = load %struct.unwind_state*, %struct.unwind_state** %5, align 8
  %98 = call i32 @unwind_next_frame(%struct.unwind_state* %97)
  br label %69

99:                                               ; preds = %24, %94
  ret void
}

declare dso_local i32 @memset(%struct.unwind_state*, i32, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64* @get_frame_pointer(%struct.task_struct*, %struct.pt_regs*) #1

declare dso_local i32 @get_stack_info(i64*, %struct.task_struct*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @update_stack_state(%struct.unwind_state*, i64*) #1

declare dso_local i32 @unwind_done(%struct.unwind_state*) #1

declare dso_local i32 @on_stack(%struct.TYPE_3__*, i64*, i32) #1

declare dso_local i32 @unwind_next_frame(%struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
