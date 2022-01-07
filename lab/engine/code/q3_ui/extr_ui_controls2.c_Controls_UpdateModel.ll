; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_UpdateModel.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_UpdateModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i8*, i8*, i32 }

@s_controls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@YAW = common dso_local global i64 0, align 8
@LEGS_IDLE = common dso_local global i8* null, align 8
@TORSO_STAND = common dso_local global i8* null, align 8
@WP_NUM_WEAPONS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@LEGS_RUN = common dso_local global i8* null, align 8
@LEGS_WALK = common dso_local global i8* null, align 8
@LEGS_BACK = common dso_local global i8* null, align 8
@LEGS_JUMP = common dso_local global i8* null, align 8
@LEGS_IDLECR = common dso_local global i8* null, align 8
@PITCH = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i32 0, align 4
@WP_MACHINEGUN = common dso_local global i32 0, align 4
@WP_SHOTGUN = common dso_local global i32 0, align 4
@WP_GRENADE_LAUNCHER = common dso_local global i32 0, align 4
@WP_ROCKET_LAUNCHER = common dso_local global i32 0, align 4
@WP_LIGHTNING = common dso_local global i32 0, align 4
@WP_RAILGUN = common dso_local global i32 0, align 4
@WP_PLASMAGUN = common dso_local global i32 0, align 4
@WP_BFG = common dso_local global i32 0, align 4
@WP_GRAPPLING_HOOK = common dso_local global i32 0, align 4
@TORSO_ATTACK = common dso_local global i8* null, align 8
@TORSO_GESTURE = common dso_local global i8* null, align 8
@BOTH_DEATH1 = common dso_local global i8* null, align 8
@WP_NONE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Controls_UpdateModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_UpdateModel(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %4 = call i32 @VectorClear(i32* %3)
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %6 = call i32 @VectorClear(i32* %5)
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %8 = load i64, i64* @YAW, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 150, i32* %9, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %11 = load i64, i64* @YAW, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %15 = load i64, i64* @YAW, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i8*, i8** @LEGS_IDLE, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %18 = load i8*, i8** @TORSO_STAND, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  %19 = load i32, i32* @WP_NUM_WEAPONS, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  %21 = load i32, i32* %2, align 4
  switch i32 %21, label %102 [
    i32 143, label %22
    i32 138, label %24
    i32 151, label %26
    i32 146, label %28
    i32 149, label %30
    i32 140, label %32
    i32 139, label %38
    i32 142, label %44
    i32 141, label %54
    i32 144, label %64
    i32 145, label %68
    i32 137, label %72
    i32 135, label %74
    i32 134, label %76
    i32 133, label %78
    i32 132, label %80
    i32 131, label %82
    i32 130, label %84
    i32 129, label %86
    i32 128, label %88
    i32 136, label %90
    i32 152, label %92
    i32 147, label %94
    i32 148, label %96
    i32 150, label %100
  ]

22:                                               ; preds = %1
  %23 = load i8*, i8** @LEGS_RUN, align 8
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %103

24:                                               ; preds = %1
  %25 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %103

26:                                               ; preds = %1
  %27 = load i8*, i8** @LEGS_BACK, align 8
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %103

28:                                               ; preds = %1
  %29 = load i8*, i8** @LEGS_JUMP, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %103

30:                                               ; preds = %1
  %31 = load i8*, i8** @LEGS_IDLECR, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  br label %103

32:                                               ; preds = %1
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %34 = load i64, i64* @YAW, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 90
  store i32 %37, i32* %35, align 4
  br label %103

38:                                               ; preds = %1
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %40 = load i64, i64* @YAW, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 90
  store i32 %43, i32* %41, align 4
  br label %103

44:                                               ; preds = %1
  %45 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %46 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %47 = load i64, i64* @YAW, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 90
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %52 = load i64, i64* @YAW, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %50, i32* %53, align 4
  br label %103

54:                                               ; preds = %1
  %55 = load i8*, i8** @LEGS_WALK, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %57 = load i64, i64* @YAW, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 90
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %62 = load i64, i64* @YAW, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  br label %103

64:                                               ; preds = %1
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %66 = load i64, i64* @PITCH, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 -45, i32* %67, align 4
  br label %103

68:                                               ; preds = %1
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %70 = load i64, i64* @PITCH, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 45, i32* %71, align 4
  br label %103

72:                                               ; preds = %1
  %73 = load i32, i32* @WP_GAUNTLET, align 4
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

74:                                               ; preds = %1
  %75 = load i32, i32* @WP_MACHINEGUN, align 4
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

76:                                               ; preds = %1
  %77 = load i32, i32* @WP_SHOTGUN, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

78:                                               ; preds = %1
  %79 = load i32, i32* @WP_GRENADE_LAUNCHER, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

80:                                               ; preds = %1
  %81 = load i32, i32* @WP_ROCKET_LAUNCHER, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

82:                                               ; preds = %1
  %83 = load i32, i32* @WP_LIGHTNING, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

84:                                               ; preds = %1
  %85 = load i32, i32* @WP_RAILGUN, align 4
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

86:                                               ; preds = %1
  %87 = load i32, i32* @WP_PLASMAGUN, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

88:                                               ; preds = %1
  %89 = load i32, i32* @WP_BFG, align 4
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

90:                                               ; preds = %1
  %91 = load i32, i32* @WP_GRAPPLING_HOOK, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

92:                                               ; preds = %1
  %93 = load i8*, i8** @TORSO_ATTACK, align 8
  store i8* %93, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  br label %103

94:                                               ; preds = %1
  %95 = load i8*, i8** @TORSO_GESTURE, align 8
  store i8* %95, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  br label %103

96:                                               ; preds = %1
  %97 = load i8*, i8** @BOTH_DEATH1, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %98 = load i8*, i8** @BOTH_DEATH1, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  %99 = load i32, i32* @WP_NONE, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  br label %103

100:                                              ; preds = %1
  %101 = load i32, i32* @qtrue, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  br label %103

102:                                              ; preds = %1
  br label %103

103:                                              ; preds = %102, %100, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %68, %64, %54, %44, %38, %32, %30, %28, %26, %24, %22
  %104 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 5), align 8
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 4), align 8
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 0), align 8
  %107 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 1), align 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 3), align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 2), align 8
  %110 = call i32 @UI_PlayerInfo_SetInfo(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_controls, i32 0, i32 6), i8* %104, i8* %105, i32* %106, i32* %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @VectorClear(i32*) #1

declare dso_local i32 @UI_PlayerInfo_SetInfo(i32*, i8*, i8*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
