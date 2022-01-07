; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_PlatformInit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_PlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@timerResolution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"Warning: Minimum supported timer resolution is %ums on this system, recommended resolution 1ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Sys_PlatformInit() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 (...) @Sys_SetFloatEnv()
  %3 = call i64 @timeGetDevCaps(%struct.TYPE_3__* %1, i32 4)
  %4 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @timerResolution, align 4
  %9 = load i32, i32* @timerResolution, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load i32, i32* @timerResolution, align 4
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %6
  %15 = load i32, i32* @timerResolution, align 4
  %16 = call i32 @timeBeginPeriod(i32 %15)
  br label %18

17:                                               ; preds = %0
  store i32 0, i32* @timerResolution, align 4
  br label %18

18:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @Sys_SetFloatEnv(...) #1

declare dso_local i64 @timeGetDevCaps(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @timeBeginPeriod(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
