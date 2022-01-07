; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_CreateCmd.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_input.c_CL_CreateCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32)* }

@cl = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@cl_debugMove = common dso_local global %struct.TYPE_8__* null, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_CreateCmd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = call %struct.TYPE_7__* (...) @dmlab_context()
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %3, align 8
  %5 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cl, i32 0, i32 0), align 8
  %6 = load i64*, i64** %2, align 8
  %7 = call i32 @VectorCopy(i64* %5, i64* %6)
  %8 = call i32 (...) @CL_AdjustAngles()
  %9 = call i32 @Com_Memset(i32* %1, i32 0, i32 4)
  %10 = call i32 @CL_CmdButtons(i32* %1)
  %11 = call i32 @CL_KeyMove(i32* %1)
  %12 = call i32 @CL_MouseMove(i32* %1)
  %13 = call i32 @CL_JoystickMove(i32* %1)
  %14 = load i64*, i64** %2, align 8
  %15 = call i32 @CL_FinishMove(i64* %14, i32* %1)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %19(i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_debugMove, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_debugMove, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cl, i32 0, i32 0), align 8
  %35 = load i64, i64* @YAW, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %2, align 8
  %39 = load i64, i64* @YAW, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %37, %41
  %43 = call i32 @fabs(i64 %42)
  %44 = call i32 @SCR_DebugGraph(i32 %43)
  br label %45

45:                                               ; preds = %33, %28
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cl_debugMove, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cl, i32 0, i32 0), align 8
  %52 = load i64, i64* @PITCH, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %2, align 8
  %56 = load i64, i64* @PITCH, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %54, %58
  %60 = call i32 @fabs(i64 %59)
  %61 = call i32 @SCR_DebugGraph(i32 %60)
  br label %62

62:                                               ; preds = %50, %45
  br label %63

63:                                               ; preds = %62, %0
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_7__* @dmlab_context(...) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @CL_AdjustAngles(...) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @CL_CmdButtons(i32*) #1

declare dso_local i32 @CL_KeyMove(i32*) #1

declare dso_local i32 @CL_MouseMove(i32*) #1

declare dso_local i32 @CL_JoystickMove(i32*) #1

declare dso_local i32 @CL_FinishMove(i64*, i32*) #1

declare dso_local i32 @SCR_DebugGraph(i32) #1

declare dso_local i32 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
