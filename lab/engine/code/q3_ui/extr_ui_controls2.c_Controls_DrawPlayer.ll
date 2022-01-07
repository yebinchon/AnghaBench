; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_DrawPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_DrawPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@s_controls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ANIM_IDLE = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @Controls_DrawPlayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_DrawPlayer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @MAX_QPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = trunc i64 %7 to i32
  %11 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 1), align 4
  %13 = call i64 @strcmp(i8* %9, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 @UI_PlayerInfo_SetModel(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0), i8* %9)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 1), align 4
  %18 = call i32 @strcpy(i32 %17, i8* %9)
  %19 = load i32, i32* @ANIM_IDLE, align 4
  %20 = call i32 @Controls_UpdateModel(i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i8*, i8** %2, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uis, i32 0, i32 0), align 4
  %39 = sdiv i32 %38, 2
  %40 = call i32 @UI_DrawPlayer(i32 %27, i32 %31, i32 %34, i32 %37, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s_controls, i32 0, i32 0), i32 %39)
  %41 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @UI_PlayerInfo_SetModel(i32*, i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @Controls_UpdateModel(i32) #2

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
