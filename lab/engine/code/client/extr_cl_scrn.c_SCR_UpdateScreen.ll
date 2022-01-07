; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_UpdateScreen.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_scrn.c_SCR_UpdateScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 (i32*, i32*)* }

@SCR_UpdateScreen.recursive = internal global i32 0, align 4
@scr_initialized = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SCR_UpdateScreen: recursively called\00", align 1
@uivm = common dso_local global i64 0, align 8
@com_dedicated = common dso_local global %struct.TYPE_9__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"r_anaglyphMode\00", align 1
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@STEREO_LEFT = common dso_local global i32 0, align 4
@renderOrigin = common dso_local global i32 0, align 4
@skipRendering = common dso_local global i32 0, align 4
@STEREO_RIGHT = common dso_local global i32 0, align 4
@STEREO_CENTER = common dso_local global i32 0, align 4
@com_speeds = common dso_local global %struct.TYPE_8__* null, align 8
@re = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@time_frontend = common dso_local global i32 0, align 4
@time_backend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_UpdateScreen() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @scr_initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %58

5:                                                ; preds = %0
  %6 = load i32, i32* @SCR_UpdateScreen.recursive, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @SCR_UpdateScreen.recursive, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, i32* @ERR_FATAL, align 4
  %11 = call i32 @Com_Error(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %5
  store i32 1, i32* @SCR_UpdateScreen.recursive, align 4
  %13 = load i64, i64* @uivm, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_dedicated, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %15, %12
  %21 = call i32 @Cvar_VariableIntegerValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %1, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @STEREO_LEFT, align 4
  %29 = load i32, i32* @renderOrigin, align 4
  %30 = load i32, i32* @skipRendering, align 4
  %31 = call i32 @SCR_DrawScreenField(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @STEREO_RIGHT, align 4
  %33 = load i32, i32* @renderOrigin, align 4
  %34 = load i32, i32* @skipRendering, align 4
  %35 = call i32 @SCR_DrawScreenField(i32 %32, i32 %33, i32 %34)
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @STEREO_CENTER, align 4
  %38 = load i32, i32* @renderOrigin, align 4
  %39 = load i32, i32* @skipRendering, align 4
  %40 = call i32 @SCR_DrawScreenField(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load i32, i32* @skipRendering, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @com_speeds, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @re, i32 0, i32 0), align 8
  %51 = call i32 %50(i32* @time_frontend, i32* @time_backend)
  br label %55

52:                                               ; preds = %44
  %53 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @re, i32 0, i32 0), align 8
  %54 = call i32 %53(i32* null, i32* null)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %15
  store i32 0, i32* @SCR_UpdateScreen.recursive, align 4
  br label %58

58:                                               ; preds = %57, %4
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @SCR_DrawScreenField(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
