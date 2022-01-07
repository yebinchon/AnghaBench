; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Vid_Restart_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_main.c_CL_Vid_Restart_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@clc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_4__* null, align 8
@FS_UI_REF = common dso_local global i32 0, align 4
@FS_CGAME_REF = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CA_CONNECTED = common dso_local global i64 0, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Vid_Restart_f() #0 {
  %1 = call i64 (...) @CL_VideoRecording()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @CL_CloseAVI()
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 2), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 (...) @CL_StopRecord_f()
  br label %10

10:                                               ; preds = %8, %5
  %11 = call i32 (...) @S_StopAllSounds()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 1), align 8
  %13 = load i8*, i8** @qtrue, align 8
  %14 = call i32 @FS_ConditionalRestart(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %10
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_sv_running, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @Hunk_ClearToMark()
  br label %25

23:                                               ; preds = %16
  %24 = call i32 (...) @Hunk_Clear()
  br label %25

25:                                               ; preds = %23, %21
  %26 = call i32 (...) @CL_ShutdownUI()
  %27 = call i32 (...) @CL_ShutdownCGame()
  %28 = call i32 (...) @CL_ShutdownRef()
  %29 = call i32 (...) @CL_ResetPureClientAtServer()
  %30 = load i32, i32* @FS_UI_REF, align 4
  %31 = load i32, i32* @FS_CGAME_REF, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @FS_ClearPakReferences(i32 %32)
  %34 = load i8*, i8** @qfalse, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 3), align 8
  %35 = load i8*, i8** @qfalse, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 2), align 8
  %36 = load i8*, i8** @qfalse, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %37 = load i8*, i8** @qfalse, align 8
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 1), align 8
  %38 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 (...) @CL_InitRef()
  %40 = load i8*, i8** @qfalse, align 8
  %41 = call i32 @CL_StartHunkUsers(i8* %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %43 = load i64, i64* @CA_CONNECTED, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %25
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clc, i32 0, i32 0), align 8
  %47 = load i64, i64* @CA_CINEMATIC, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i8*, i8** @qtrue, align 8
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %51 = call i32 (...) @CL_InitCGame()
  %52 = call i32 (...) @CL_SendPureChecksums()
  br label %53

53:                                               ; preds = %49, %45, %25
  br label %54

54:                                               ; preds = %53, %10
  ret void
}

declare dso_local i64 @CL_VideoRecording(...) #1

declare dso_local i32 @CL_CloseAVI(...) #1

declare dso_local i32 @CL_StopRecord_f(...) #1

declare dso_local i32 @S_StopAllSounds(...) #1

declare dso_local i32 @FS_ConditionalRestart(i32, i8*) #1

declare dso_local i32 @Hunk_ClearToMark(...) #1

declare dso_local i32 @Hunk_Clear(...) #1

declare dso_local i32 @CL_ShutdownUI(...) #1

declare dso_local i32 @CL_ShutdownCGame(...) #1

declare dso_local i32 @CL_ShutdownRef(...) #1

declare dso_local i32 @CL_ResetPureClientAtServer(...) #1

declare dso_local i32 @FS_ClearPakReferences(i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @CL_InitRef(...) #1

declare dso_local i32 @CL_StartHunkUsers(i8*) #1

declare dso_local i32 @CL_InitCGame(...) #1

declare dso_local i32 @CL_SendPureChecksums(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
