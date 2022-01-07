; ModuleID = '/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelCellValue.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_OLD_page16.c_modelCellValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yellowRow = common dso_local global i32 0, align 4
@img = common dso_local global i8** null, align 8
@checkStates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Row %d\00", align 1
@row9text = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Part\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Make Yellow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32, i32)* @modelCellValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @modelCellValue(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @yellowRow, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i8* @uiTableModelGiveColor(double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 1)
  store i8* %18, i8** %5, align 8
  br label %106

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i8* @uiTableModelGiveColor(double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1)
  store i8* %23, i8** %5, align 8
  br label %106

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 11
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @uiTableModelGiveColor(double 0.000000e+00, double 5.000000e-01, double 1.000000e+00, i32 0)
  store i8* %28, i8** %5, align 8
  br label %106

29:                                               ; preds = %24
  store i8* null, i8** %5, align 8
  br label %106

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i8* @uiTableModelGiveColor(double 5.000000e-01, double 0.000000e+00, double 7.500000e-01, i32 1)
  store i8* %38, i8** %5, align 8
  br label %106

39:                                               ; preds = %33
  store i8* null, i8** %5, align 8
  br label %106

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8**, i8*** @img, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  br label %106

50:                                               ; preds = %43
  %51 = load i8**, i8*** @img, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %106

54:                                               ; preds = %40
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 7
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32*, i32** @checkStates, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @uiTableModelGiveInt(i32 %62)
  store i8* %63, i8** %5, align 8
  br label %106

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i8* @uiTableModelGiveInt(i32 0)
  store i8* %71, i8** %5, align 8
  br label %106

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i8* @uiTableModelGiveInt(i32 100)
  store i8* %76, i8** %5, align 8
  br label %106

77:                                               ; preds = %72
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 14
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call i8* @uiTableModelGiveInt(i32 -1)
  store i8* %81, i8** %5, align 8
  br label %106

82:                                               ; preds = %77
  %83 = call i8* @uiTableModelGiveInt(i32 50)
  store i8* %83, i8** %5, align 8
  br label %106

84:                                               ; preds = %64
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %103 [
    i32 0, label %86
    i32 2, label %90
    i32 1, label %97
    i32 6, label %100
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %103

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %91, 9
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8*, i8** @row9text, align 8
  %95 = call i8* @uiTableModelStrdup(i8* %94)
  store i8* %95, i8** %5, align 8
  br label %106

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %84, %96
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %99 = call i32 @strcpy(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %103

100:                                              ; preds = %84
  %101 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %102 = call i32 @strcpy(i8* %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %84, %100, %97, %86
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %105 = call i8* @uiTableModelStrdup(i8* %104)
  store i8* %105, i8** %5, align 8
  br label %106

106:                                              ; preds = %103, %93, %82, %80, %75, %70, %57, %50, %46, %39, %37, %29, %27, %22, %17
  %107 = load i8*, i8** %5, align 8
  ret i8* %107
}

declare dso_local i8* @uiTableModelGiveColor(double, double, double, i32) #1

declare dso_local i8* @uiTableModelGiveInt(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @uiTableModelStrdup(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
