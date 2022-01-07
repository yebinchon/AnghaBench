; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_gameinfo.c_UI_SetBestScore.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_gameinfo.c_UI_SetBestScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"g_spSkill\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"g_spScores%i\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"l%i\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SetBestScore(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAX_INFO_VALUE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %2
  store i32 1, i32* %10, align 4
  br label %56

21:                                               ; preds = %17
  %22 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %21
  store i32 1, i32* %10, align 4
  br label %56

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @MAX_INFO_VALUE, align 4
  %34 = call i32 @trap_Cvar_VariableStringBuffer(i32 %32, i8* %14, i32 %33)
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @Com_sprintf(i8* %35, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %39 = call i32 @Info_ValueForKey(i8* %14, i8* %38)
  %40 = call i32 @atoi(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %56

48:                                               ; preds = %43, %30
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = call i32 @Info_SetValueForKey(i8* %14, i8* %49, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @va(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = call i32 @trap_Cvar_Set(i32 %54, i8* %14)
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %48, %47, %29, %20
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %10, align 4
  switch i32 %58, label %60 [
    i32 0, label %59
    i32 1, label %59
  ]

59:                                               ; preds = %56, %56
  ret void

60:                                               ; preds = %56
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i32, i8*, i32) #2

declare dso_local i32 @va(i8*, i32) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @atoi(i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i32 @Info_SetValueForKey(i8*, i8*, i32) #2

declare dso_local i32 @trap_Cvar_Set(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
