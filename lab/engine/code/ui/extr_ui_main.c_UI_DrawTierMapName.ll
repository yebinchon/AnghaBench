; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawTierMapName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_DrawTierMapName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ui_currentTier\00", align 1
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ui_currentMap\00", align 1
@MAPS_PER_TIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float, i32, i32)* @UI_DrawTierMapName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawTierMapName(%struct.TYPE_6__* %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0), align 8
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MAPS_PER_TIER, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load float, float* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 1), align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @UI_EnglishMapName(i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @Text_Paint(i32 %31, i32 %34, float %35, i32 %36, i32 %47, i32 0, i32 0, i32 %48)
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Text_Paint(i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UI_EnglishMapName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
