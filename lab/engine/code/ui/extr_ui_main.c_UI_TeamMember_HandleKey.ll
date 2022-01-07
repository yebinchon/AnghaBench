; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_TeamMember_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_TeamMember_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ui_blueteam%i\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ui_redteam%i\00", align 1
@ui_actualNetGameType = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, float*, i32, i64, i32)* @UI_TeamMember_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UI_TeamMember_HandleKey(i32 %0, float* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @UI_SelectForKey(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %5
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0)
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @va(i8* %23, i32 %24)
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @trap_Cvar_VariableValue(i8* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %14, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ui_actualNetGameType, i32 0, i32 0), align 8
  %32 = load i64, i64* @GT_TEAM, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %19
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 2
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 4
  %45 = add nsw i32 %44, 2
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %39
  br label %64

49:                                               ; preds = %19
  %50 = load i32, i32* %14, align 4
  %51 = call i32 (...) @UI_GetNumBots()
  %52 = add nsw i32 %51, 2
  %53 = icmp sge i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 (...) @UI_GetNumBots()
  %60 = add nsw i32 %59, 2
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @trap_Cvar_SetValue(i8* %65, i32 %66)
  %68 = load i64, i64* @qtrue, align 8
  store i64 %68, i64* %6, align 8
  br label %71

69:                                               ; preds = %5
  %70 = load i64, i64* @qfalse, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i32 @UI_SelectForKey(i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @UI_GetNumBots(...) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
