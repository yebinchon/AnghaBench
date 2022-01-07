; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_serverinfo.c_Favorites_Add.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_serverinfo.c_Favorites_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"cl_currentServerAddress\00", align 1
@MAX_FAVORITESERVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"server%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Favorites_Add() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %6 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %5, i32 128)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %8 = load i8, i8* %7, align 16
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %49

11:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MAX_FAVORITESERVERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %21 = call i32 @trap_Cvar_VariableStringBuffer(i8* %19, i8* %20, i32 128)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %24 = call i32 @Q_stricmp(i8* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %49

27:                                               ; preds = %16
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %31, %27
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = call i8* @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %48 = call i32 @trap_Cvar_Set(i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %10, %26, %44, %41
  ret void
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
