; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_Parse.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Menu_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32 (i32*, i32)* }

@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"end of file inside menu\00", align 1
@qtrue = common dso_local global i32 0, align 4
@menuParseKeywordHash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown menu keyword %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"couldn't parse menu keyword %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Menu_Parse(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @trap_PC_ReadToken(i32 %8, %struct.TYPE_6__* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 123
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @qfalse, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %46, %65
  %23 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 8)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @trap_PC_ReadToken(i32 %24, %struct.TYPE_6__* %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 125
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @qtrue, align 4
  store i32 %38, i32* %3, align 4
  br label %66

39:                                               ; preds = %31
  %40 = load i32, i32* @menuParseKeywordHash, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call %struct.TYPE_7__* @KeywordHash_Find(i32 %40, i8* %42)
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %7, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %22

51:                                               ; preds = %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32 (i32*, i32)*, i32 (i32*, i32)** %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 %54(i32* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i32, i8*, ...) @PC_SourceError(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %51
  br label %22

66:                                               ; preds = %59, %37, %27, %19, %11
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @trap_PC_ReadToken(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @PC_SourceError(i32, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @KeywordHash_Find(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
