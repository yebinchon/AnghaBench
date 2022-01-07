; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_ParseGameInfo.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_main.c_UI_ParseGameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gametypes\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"joingametypes\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @UI_ParseGameInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_ParseGameInfo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @GetMenuBuffer(i8* %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %11, %40, %50, %58
  %14 = load i32, i32* @qtrue, align 4
  %15 = call i8* @COM_ParseExt(i8** %4, i32 %14)
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 125
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %13
  br label %59

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %59

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @Q_stricmp(i8* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* @qfalse, align 4
  %38 = call i64 @GameType_Parse(i8** %4, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %13

41:                                               ; preds = %36
  br label %59

42:                                               ; preds = %32
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @Q_stricmp(i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @qtrue, align 4
  %48 = call i64 @GameType_Parse(i8** %4, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %13

51:                                               ; preds = %46
  br label %59

52:                                               ; preds = %42
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @Q_stricmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @MapList_Parse(i8** %4)
  br label %58

58:                                               ; preds = %56, %52
  br label %13

59:                                               ; preds = %10, %51, %41, %31, %26
  ret void
}

declare dso_local i8* @GetMenuBuffer(i8*) #1

declare dso_local i8* @COM_ParseExt(i8**, i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i64 @GameType_Parse(i8**, i32) #1

declare dso_local i32 @MapList_Parse(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
