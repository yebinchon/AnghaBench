; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_DrawPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_playersettings.c_PlayerSettings_DrawPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@s_playersettings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@LEGS_IDLE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @PlayerSettings_DrawPlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerSettings_DrawPlayer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAX_QPATH, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = trunc i64 %8 to i32
  %12 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playersettings, i32 0, i32 1), align 4
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %1
  %17 = call i32 @UI_PlayerInfo_SetModel(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playersettings, i32 0, i32 0), i8* %10)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playersettings, i32 0, i32 1), align 4
  %19 = call i32 @strcpy(i32 %18, i8* %10)
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* @YAW, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 150, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* @PITCH, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @ROLL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @LEGS_IDLE, align 4
  %30 = load i32, i32* @TORSO_STAND, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @vec3_origin, align 4
  %33 = load i32, i32* @WP_MACHINEGUN, align 4
  %34 = load i32, i32* @qfalse, align 4
  %35 = call i32 @UI_PlayerInfo_SetInfo(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playersettings, i32 0, i32 0), i32 %29, i32 %30, i32* %31, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %16, %1
  %37 = load i8*, i8** %2, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %3, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uis, i32 0, i32 0), align 4
  %54 = sdiv i32 %53, 2
  %55 = call i32 @UI_DrawPlayer(i32 %42, i32 %46, i32 %49, i32 %52, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_playersettings, i32 0, i32 0), i32 %54)
  %56 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i32, i32, i32*, i32, i32, i32) #2

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
