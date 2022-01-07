; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawOpponent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawOpponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@UI_DrawOpponent.info2 = internal global i32 0, align 4
@MAX_QPATH = common dso_local global i32 0, align 4
@updateOpponentModel = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"ui_opponentModel\00", align 1
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @UI_DrawOpponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawOpponent(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
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
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i64, i64* @updateOpponentModel, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = trunc i64 %10 to i32
  %21 = call i32 @Q_strncpyz(i8* %12, i32 %19, i32 %20)
  %22 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = trunc i64 %14 to i32
  %24 = call i32 @Q_strncpyz(i8* %15, i32 %22, i32 %23)
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = call i32 @memset(i32* @UI_DrawOpponent.info2, i32 0, i32 4)
  %27 = load i32*, i32** %7, align 8
  %28 = load i64, i64* @YAW, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 170, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* @PITCH, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i64, i64* @ROLL, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @VectorClear(i32* %36)
  %38 = call i32 @UI_PlayerInfo_SetModel(i32* @UI_DrawOpponent.info2, i8* %12, i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @LEGS_IDLE, align 4
  %40 = load i32, i32* @TORSO_STAND, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @vec3_origin, align 4
  %43 = load i32, i32* @WP_MACHINEGUN, align 4
  %44 = load i64, i64* @qfalse, align 8
  %45 = call i32 @UI_PlayerInfo_SetInfo(i32* @UI_DrawOpponent.info2, i32 %39, i32 %40, i32* %41, i32 %42, i32 %43, i64 %44)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = call i32 @UI_RegisterClientModelname(i32* @UI_DrawOpponent.info2, i8* %12, i8* %15, i8* %46)
  %48 = load i64, i64* @qfalse, align 8
  store i64 %48, i64* @updateOpponentModel, align 8
  br label %49

49:                                               ; preds = %18, %1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %63 = sdiv i32 %62, 2
  %64 = call i32 @UI_DrawPlayer(i32 %52, i32 %55, i32 %58, i32 %61, i32* @UI_DrawOpponent.info2, i32 %63)
  %65 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %65)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @UI_Cvar_VariableString(i8*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @VectorClear(i32*) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i64) #2

declare dso_local i32 @UI_RegisterClientModelname(i32*, i8*, i8*, i8*) #2

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
