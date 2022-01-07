; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawPlayerModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawPlayerModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@UI_DrawPlayerModel.info = internal global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ui_Q3Model\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@q3Model = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@updateModel = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"ui_teamName\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"team_model\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"team_headmodel\00", align 1
@qfalse = common dso_local global i8* null, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @UI_DrawPlayerModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawPlayerModel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = trunc i64 %10 to i32
  %18 = call i32 @Q_strncpyz(i8* %12, i32 %16, i32 %17)
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %20 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @Q_strncpyz(i8* %19, i32 %20, i32 256)
  %22 = load i8*, i8** @q3Model, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i8*, i8** @qtrue, align 8
  store i8* %25, i8** @q3Model, align 8
  %26 = load i8*, i8** @qtrue, align 8
  store i8* %26, i8** @updateModel, align 8
  br label %27

27:                                               ; preds = %24, %15
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %28, align 16
  br label %45

29:                                               ; preds = %1
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %31 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @Q_strncpyz(i8* %30, i32 %31, i32 256)
  %33 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %34 = trunc i64 %10 to i32
  %35 = call i32 @Q_strncpyz(i8* %12, i32 %33, i32 %34)
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %37 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %38 = call i32 @Q_strncpyz(i8* %36, i32 %37, i32 256)
  %39 = load i8*, i8** @q3Model, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i8*, i8** @qfalse, align 8
  store i8* %42, i8** @q3Model, align 8
  %43 = load i8*, i8** @qtrue, align 8
  store i8* %43, i8** @updateModel, align 8
  br label %44

44:                                               ; preds = %41, %29
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i8*, i8** @updateModel, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %45
  %49 = call i32 @memset(i32* @UI_DrawPlayerModel.info, i32 0, i32 4)
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* @YAW, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 170, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* @PITCH, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* @ROLL, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @VectorClear(i32* %59)
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %63 = call i32 @UI_PlayerInfo_SetModel(i32* @UI_DrawPlayerModel.info, i8* %12, i8* %61, i8* %62)
  %64 = load i32, i32* @LEGS_IDLE, align 4
  %65 = load i32, i32* @TORSO_STAND, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @vec3_origin, align 4
  %68 = load i32, i32* @WP_MACHINEGUN, align 4
  %69 = load i8*, i8** @qfalse, align 8
  %70 = call i32 @UI_PlayerInfo_SetInfo(i32* @UI_DrawPlayerModel.info, i32 %64, i32 %65, i32* %66, i32 %67, i32 %68, i8* %69)
  %71 = load i8*, i8** @qfalse, align 8
  store i8* %71, i8** @updateModel, align 8
  br label %72

72:                                               ; preds = %48, %45
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %86 = sdiv i32 %85, 2
  %87 = call i32 @UI_DrawPlayer(i32 %75, i32 %78, i32 %81, i32 %84, i32* @UI_DrawPlayerModel.info, i32 %86)
  %88 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @UI_Cvar_VariableString(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @VectorClear(i32*) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i8*) #2

declare dso_local i32 @UI_DrawPlayer(i32, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
