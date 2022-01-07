; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_TorsoSequencing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_TorsoSequencing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@TORSO_DROP = common dso_local global i32 0, align 4
@UI_TIMER_WEAPON_SWITCH = common dso_local global i8* null, align 8
@TORSO_GESTURE = common dso_local global i32 0, align 4
@TORSO_STAND = common dso_local global i32 0, align 4
@TORSO_ATTACK = common dso_local global i32 0, align 4
@TORSO_ATTACK2 = common dso_local global i32 0, align 4
@TORSO_RAISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @UI_TorsoSequencing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_TorsoSequencing(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TORSO_DROP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i8*, i8** @UI_TIMER_WEAPON_SWITCH, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = load i32, i32* @TORSO_DROP, align 4
  %28 = call i32 @UI_ForceTorsoAnim(%struct.TYPE_6__* %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %17
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %81

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @TORSO_GESTURE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %42 = load i32, i32* @TORSO_STAND, align 4
  %43 = call i32 @UI_SetTorsoAnim(%struct.TYPE_6__* %41, i32 %42)
  br label %81

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @TORSO_ATTACK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TORSO_ATTACK2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %54 = load i32, i32* @TORSO_STAND, align 4
  %55 = call i32 @UI_SetTorsoAnim(%struct.TYPE_6__* %53, i32 %54)
  br label %81

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @TORSO_DROP, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @UI_PlayerInfo_SetWeapon(%struct.TYPE_6__* %61, i64 %64)
  %66 = load i8*, i8** @UI_TIMER_WEAPON_SWITCH, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = load i32, i32* @TORSO_RAISE, align 4
  %72 = call i32 @UI_ForceTorsoAnim(%struct.TYPE_6__* %70, i32 %71)
  br label %81

73:                                               ; preds = %56
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @TORSO_RAISE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = load i32, i32* @TORSO_STAND, align 4
  %80 = call i32 @UI_SetTorsoAnim(%struct.TYPE_6__* %78, i32 %79)
  br label %81

81:                                               ; preds = %35, %40, %52, %60, %77, %73
  ret void
}

declare dso_local i32 @UI_ForceTorsoAnim(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @UI_SetTorsoAnim(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @UI_PlayerInfo_SetWeapon(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
