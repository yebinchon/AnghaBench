; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_atoms.c_UI_ConsoleCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_atoms.c_UI_ConsoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"ui_test\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ui_report\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ui_load\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"remapShader\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"postgame\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ui_cache\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ui_teamOrders\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ui_cdkey\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_ConsoleCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %13 = call i8* @UI_Argv(i32 0)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @Q_stricmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @qtrue, align 4
  %19 = call i32 @UI_ShowPostGame(i32 %18)
  %20 = load i32, i32* @qtrue, align 4
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @Q_stricmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = call i32 (...) @UI_Report()
  %27 = load i32, i32* @qtrue, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @Q_stricmp(i8* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call i32 (...) @UI_Load()
  %34 = load i32, i32* @qtrue, align 4
  store i32 %34, i32* %2, align 4
  br label %94

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @Q_stricmp(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = call i32 (...) @trap_Argc()
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, i32* @MAX_QPATH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %5, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %6, align 8
  %47 = load i32, i32* @MAX_QPATH, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %7, align 8
  %50 = load i32, i32* @MAX_QPATH, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %8, align 8
  %53 = call i8* @UI_Argv(i32 1)
  %54 = trunc i64 %44 to i32
  %55 = call i32 @Q_strncpyz(i8* %46, i8* %53, i32 %54)
  %56 = call i8* @UI_Argv(i32 2)
  %57 = trunc i64 %48 to i32
  %58 = call i32 @Q_strncpyz(i8* %49, i8* %56, i32 %57)
  %59 = call i8* @UI_Argv(i32 3)
  %60 = trunc i64 %51 to i32
  %61 = call i32 @Q_strncpyz(i8* %52, i8* %59, i32 %60)
  %62 = call i32 @trap_R_RemapShader(i8* %46, i8* %49, i8* %52)
  %63 = load i32, i32* @qtrue, align 4
  store i32 %63, i32* %2, align 4
  %64 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %94

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @Q_stricmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (...) @UI_CalcPostGameStats()
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* %2, align 4
  br label %94

73:                                               ; preds = %66
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @Q_stricmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32 (...) @UI_Cache_f()
  %79 = load i32, i32* @qtrue, align 4
  store i32 %79, i32* %2, align 4
  br label %94

80:                                               ; preds = %73
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @Q_stricmp(i8* %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @qtrue, align 4
  store i32 %85, i32* %2, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i8*, i8** %4, align 8
  %88 = call i64 @Q_stricmp(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @qtrue, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @qfalse, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %90, %84, %77, %70, %42, %32, %25, %17
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i8* @UI_Argv(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @UI_ShowPostGame(i32) #1

declare dso_local i32 @UI_Report(...) #1

declare dso_local i32 @UI_Load(...) #1

declare dso_local i32 @trap_Argc(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @trap_R_RemapShader(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UI_CalcPostGameStats(...) #1

declare dso_local i32 @UI_Cache_f(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
