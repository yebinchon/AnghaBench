; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_GetConfig.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_controls2.c_Controls_GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 }

@g_bindings = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"m_pitch\00", align 1
@s_controls = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"m_filter\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cl_run\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cg_autoswitch\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"in_joystick\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"joy_threshold\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cl_freelook\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Controls_GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_GetConfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bindings, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %25, %0
  %6 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  br label %30

11:                                               ; preds = %5
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %16 = call i32 @Controls_GetKeyAssignment(i32 %14, i32* %15)
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 1
  store %struct.TYPE_21__* %29, %struct.TYPE_21__** %3, align 8
  br label %5

30:                                               ; preds = %10
  %31 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 7, i32 0), align 8
  %34 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i8* @UI_ClampCvar(float 0.000000e+00, i32 1, i64 %34)
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 6, i32 0), align 8
  %36 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i8* @UI_ClampCvar(float 0.000000e+00, i32 1, i64 %36)
  store i8* %37, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 5, i32 0), align 8
  %38 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i8* @UI_ClampCvar(float 0.000000e+00, i32 1, i64 %38)
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 4, i32 0), align 8
  %40 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i8* @UI_ClampCvar(float 2.000000e+00, i32 30, i64 %40)
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 3, i32 0), align 8
  %42 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %43 = call i8* @UI_ClampCvar(float 0.000000e+00, i32 1, i64 %42)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 2, i32 0), align 8
  %44 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %45 = call i8* @UI_ClampCvar(float 0x3FA99999A0000000, i32 0, i64 %44)
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 1, i32 0), align 8
  %46 = call i64 @Controls_GetCvarValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %47 = call i8* @UI_ClampCvar(float 0.000000e+00, i32 1, i64 %46)
  store i8* %47, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @Controls_GetKeyAssignment(i32, i32*) #1

declare dso_local i64 @Controls_GetCvarValue(i8*) #1

declare dso_local i8* @UI_ClampCvar(float, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
