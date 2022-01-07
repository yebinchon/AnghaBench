; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page16.c_modelCellValue.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page16.c_modelCellValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yellowRow = common dso_local global i32 0, align 4
@img = common dso_local global i32* null, align 8
@checkStates = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"Row %d\00", align 1
@row9text = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Part\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Make Yellow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32, i32)* @modelCellValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @modelCellValue(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
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
  %18 = call i32* @uiNewTableValueColor(double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 1)
  store i32* %18, i32** %5, align 8
  br label %108

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32* @uiNewTableValueColor(double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1)
  store i32* %23, i32** %5, align 8
  br label %108

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 11
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32* @uiNewTableValueColor(double 0.000000e+00, double 5.000000e-01, double 1.000000e+00, i32 0)
  store i32* %28, i32** %5, align 8
  br label %108

29:                                               ; preds = %24
  store i32* null, i32** %5, align 8
  br label %108

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
  %38 = call i32* @uiNewTableValueColor(double 5.000000e-01, double 0.000000e+00, double 7.500000e-01, i32 1)
  store i32* %38, i32** %5, align 8
  br label %108

39:                                               ; preds = %33
  store i32* null, i32** %5, align 8
  br label %108

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** @img, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @uiNewTableValueImage(i32 %49)
  store i32* %50, i32** %5, align 8
  br label %108

51:                                               ; preds = %43
  %52 = load i32*, i32** @img, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @uiNewTableValueImage(i32 %54)
  store i32* %55, i32** %5, align 8
  br label %108

56:                                               ; preds = %40
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 7
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** @checkStates, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @uiNewTableValueInt(i32 %64)
  store i32* %65, i32** %5, align 8
  br label %108

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32* @uiNewTableValueInt(i32 0)
  store i32* %73, i32** %5, align 8
  br label %108

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 13
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32* @uiNewTableValueInt(i32 100)
  store i32* %78, i32** %5, align 8
  br label %108

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = icmp eq i32 %80, 14
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32* @uiNewTableValueInt(i32 -1)
  store i32* %83, i32** %5, align 8
  br label %108

84:                                               ; preds = %79
  %85 = call i32* @uiNewTableValueInt(i32 50)
  store i32* %85, i32** %5, align 8
  br label %108

86:                                               ; preds = %66
  %87 = load i32, i32* %9, align 4
  switch i32 %87, label %105 [
    i32 0, label %88
    i32 2, label %92
    i32 1, label %99
    i32 6, label %102
  ]

88:                                               ; preds = %86
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @sprintf(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %105

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 9
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** @row9text, align 8
  %97 = call i32* @uiNewTableValueString(i8* %96)
  store i32* %97, i32** %5, align 8
  br label %108

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %86, %98
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %101 = call i32 @strcpy(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %105

102:                                              ; preds = %86
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %104 = call i32 @strcpy(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %86, %102, %99, %88
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %107 = call i32* @uiNewTableValueString(i8* %106)
  store i32* %107, i32** %5, align 8
  br label %108

108:                                              ; preds = %105, %95, %84, %82, %77, %72, %59, %51, %46, %39, %37, %29, %27, %22, %17
  %109 = load i32*, i32** %5, align 8
  ret i32* %109
}

declare dso_local i32* @uiNewTableValueColor(double, double, double, i32) #1

declare dso_local i32* @uiNewTableValueImage(i32) #1

declare dso_local i32* @uiNewTableValueInt(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @uiNewTableValueString(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
