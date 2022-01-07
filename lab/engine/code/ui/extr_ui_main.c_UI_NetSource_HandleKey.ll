; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_NetSource_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_NetSource_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ui_netSource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UIAS_GLOBAL1 = common dso_local global i64 0, align 8
@UIAS_GLOBAL5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"sv_master%d\00", align 1
@UIAS_GLOBAL0 = common dso_local global i64 0, align 8
@numNetSources = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"ui_netSource\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*, i32)* @UI_NetSource_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_NetSource_HandleKey(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8], align 1
  %10 = alloca [11 x i8], align 1
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @UI_SelectForKey(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %21 = load i64, i64* @UIAS_GLOBAL1, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %25 = load i64, i64* @UIAS_GLOBAL5, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %30 = load i64, i64* @UIAS_GLOBAL1, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %34 = load i64, i64* @UIAS_GLOBAL5, align 8
  %35 = icmp sle i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ false, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %56

38:                                               ; preds = %36
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %41 = load i64, i64* @UIAS_GLOBAL0, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i32 @Com_sprintf(i8* %39, i32 11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %10, i64 0, i64 0
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %46 = call i32 @trap_Cvar_VariableStringBuffer(i8* %44, i8* %45, i32 2)
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %56

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %28

56:                                               ; preds = %50, %36
  br label %57

57:                                               ; preds = %56, %23, %15
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %59 = load i64, i64* @numNetSources, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %69

62:                                               ; preds = %57
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* @numNetSources, align 8
  %67 = sub nsw i64 %66, 1
  store i64 %67, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32, i32* @qtrue, align 4
  %71 = call i32 @UI_BuildServerDisplayList(i32 %70)
  %72 = load i32, i32* @qtrue, align 4
  %73 = load i32, i32* @qfalse, align 4
  %74 = call i32 @UI_StartServerRefresh(i32 %72, i32 %73)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %76 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @qtrue, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %3
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %69
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @UI_SelectForKey(i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i32 @UI_BuildServerDisplayList(i32) #1

declare dso_local i32 @UI_StartServerRefresh(i32, i32) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
