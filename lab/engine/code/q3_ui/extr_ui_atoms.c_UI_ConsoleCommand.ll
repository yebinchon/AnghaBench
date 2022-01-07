; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_ConsoleCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_atoms.c_UI_ConsoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@uis = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"levelselect\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"postgame\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ui_cache\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ui_cinematics\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ui_teamOrders\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"iamacheater\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"iamamonkey\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ui_cdkey\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_ConsoleCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 1), align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 0), align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uis, i32 0, i32 1), align 4
  %9 = call i8* @UI_Argv(i32 0)
  store i8* %9, i8** %4, align 8
  %10 = call i32 (...) @Menu_Cache()
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @Q_stricmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 (...) @UI_SPLevelMenu_f()
  %16 = load i32, i32* @qtrue, align 4
  store i32 %16, i32* %2, align 4
  br label %68

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @Q_stricmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32 (...) @UI_SPPostgameMenu_f()
  %23 = load i32, i32* @qtrue, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @Q_stricmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = call i32 (...) @UI_Cache_f()
  %30 = load i32, i32* @qtrue, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @Q_stricmp(i8* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 (...) @UI_CinematicsMenu_f()
  %37 = load i32, i32* @qtrue, align 4
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @Q_stricmp(i8* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = call i32 (...) @UI_TeamOrdersMenu_f()
  %44 = load i32, i32* @qtrue, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = call i64 @Q_stricmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call i32 (...) @UI_SPUnlock_f()
  %51 = load i32, i32* @qtrue, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @Q_stricmp(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 (...) @UI_SPUnlockMedals_f()
  %58 = load i32, i32* @qtrue, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %52
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @Q_stricmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 (...) @UI_CDKeyMenu_f()
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @qfalse, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %63, %56, %49, %42, %35, %28, %21, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i8* @UI_Argv(i32) #1

declare dso_local i32 @Menu_Cache(...) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @UI_SPLevelMenu_f(...) #1

declare dso_local i32 @UI_SPPostgameMenu_f(...) #1

declare dso_local i32 @UI_Cache_f(...) #1

declare dso_local i32 @UI_CinematicsMenu_f(...) #1

declare dso_local i32 @UI_TeamOrdersMenu_f(...) #1

declare dso_local i32 @UI_SPUnlock_f(...) #1

declare dso_local i32 @UI_SPUnlockMedals_f(...) #1

declare dso_local i32 @UI_CDKeyMenu_f(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
