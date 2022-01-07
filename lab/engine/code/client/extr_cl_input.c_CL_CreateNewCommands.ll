; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_CreateNewCommands.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_CreateNewCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }

@clc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@com_frameTime = common dso_local global i32 0, align 4
@old_com_frameTime = common dso_local global i32 0, align 4
@frame_msec = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CMD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CreateNewCommands() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @clc, i32 0, i32 0), align 8
  %3 = load i64, i64* @CA_PRIMED, align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %29

6:                                                ; preds = %0
  %7 = load i32, i32* @com_frameTime, align 4
  %8 = load i32, i32* @old_com_frameTime, align 4
  %9 = sub nsw i32 %7, %8
  store i32 %9, i32* @frame_msec, align 4
  %10 = load i32, i32* @frame_msec, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 1, i32* @frame_msec, align 4
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, i32* @frame_msec, align 4
  %15 = icmp sgt i32 %14, 200
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 200, i32* @frame_msec, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* @com_frameTime, align 4
  store i32 %18, i32* @old_com_frameTime, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %22 = load i32, i32* @CMD_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %1, align 4
  %24 = call i32 (...) @CL_CreateCmd()
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 1), align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %17, %5
  ret void
}

declare dso_local i32 @CL_CreateCmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
