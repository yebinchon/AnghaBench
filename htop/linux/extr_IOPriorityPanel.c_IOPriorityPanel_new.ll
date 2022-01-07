; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_IOPriorityPanel.c_IOPriorityPanel_new.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_IOPriorityPanel.c_IOPriorityPanel_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i8* }

@ListItem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Set    \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Cancel \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"IO Priority:\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"None (based on nice)\00", align 1
@IOPriority_None = common dso_local global i64 0, align 8
@IOPriorityPanel_new.classes = internal constant [3 x %struct.anon] [%struct.anon { i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i32 129, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"Realtime\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Best-effort\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s %d %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"(High)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(Low)\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@IOPriority_Idle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @IOPriorityPanel_new(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [50 x i8], align 16
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i32, i32* @ListItem, align 4
  %9 = call i32 @Class(i32 %8)
  %10 = call i32 @FunctionBar_newEnterEsc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32* @Panel_new(i32 1, i32 1, i32 1, i32 1, i32 1, i32 %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @Panel_setHeader(i32* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = load i64, i64* @IOPriority_None, align 8
  %16 = call i64 @ListItem_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %15)
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @Panel_add(i32* %14, i32* %17)
  %19 = load i64, i64* %2, align 8
  %20 = load i64, i64* @IOPriority_None, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @Panel_setSelected(i32* %23, i64 0)
  br label %25

25:                                               ; preds = %22, %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %83, %25
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @IOPriorityPanel_new.classes, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %86

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %79, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @IOPriorityPanel_new.classes, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %53

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 7
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  br label %53

53:                                               ; preds = %48, %47
  %54 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %47 ], [ %52, %48 ]
  %55 = call i32 @xSnprintf(i8* %38, i32 49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %43, i32 %44, i8* %54)
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x %struct.anon], [3 x %struct.anon]* @IOPriorityPanel_new.classes, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 16
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @IOPriority_tuple(i32 %60, i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds [50 x i8], [50 x i8]* %6, i64 0, i64 0
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @ListItem_new(i8* %64, i64 %65)
  %67 = inttoptr i64 %66 to i32*
  %68 = call i32 @Panel_add(i32* %63, i32* %67)
  %69 = load i64, i64* %2, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %53
  %73 = load i32*, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = call i64 @Panel_size(i32* %74)
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @Panel_setSelected(i32* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %53
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %34

82:                                               ; preds = %34
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %26

86:                                               ; preds = %26
  %87 = load i32*, i32** %3, align 8
  %88 = load i64, i64* @IOPriority_Idle, align 8
  %89 = call i64 @ListItem_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %88)
  %90 = inttoptr i64 %89 to i32*
  %91 = call i32 @Panel_add(i32* %87, i32* %90)
  %92 = load i64, i64* %2, align 8
  %93 = load i64, i64* @IOPriority_Idle, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = load i32*, i32** %3, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = call i64 @Panel_size(i32* %97)
  %99 = sub nsw i64 %98, 1
  %100 = call i32 @Panel_setSelected(i32* %96, i64 %99)
  br label %101

101:                                              ; preds = %95, %86
  %102 = load i32*, i32** %3, align 8
  ret i32* %102
}

declare dso_local i32* @Panel_new(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Class(i32) #1

declare dso_local i32 @FunctionBar_newEnterEsc(i8*, i8*) #1

declare dso_local i32 @Panel_setHeader(i32*, i8*) #1

declare dso_local i32 @Panel_add(i32*, i32*) #1

declare dso_local i64 @ListItem_new(i8*, i64) #1

declare dso_local i32 @Panel_setSelected(i32*, i64) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i64 @IOPriority_tuple(i32, i32) #1

declare dso_local i64 @Panel_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
