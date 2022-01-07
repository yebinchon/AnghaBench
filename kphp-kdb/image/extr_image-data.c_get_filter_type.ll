; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_filter_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_filter_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"ox\00", align 1
@BoxFilter = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"lackman\00", align 1
@BlackmanFilter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"essel\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ubic\00", align 1
@CubicFilter = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"atrom\00", align 1
@CatromFilter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"aussian\00", align 1
@GaussianFilter = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"ermite\00", align 1
@HermiteFilter = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"anning\00", align 1
@HanningFilter = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"anczos\00", align 1
@LanczosFilter = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"itchell\00", align 1
@MitchellFilter = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"oint\00", align 1
@PointFilter = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"uadratic\00", align 1
@QuadraticFilter = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"inc\00", align 1
@SincFilter = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"riangle\00", align 1
@TriangleFilter = common dso_local global i32 0, align 4
@UndefinedFilter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_filter_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_filter_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %5, i8** %3, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %102 [
    i32 98, label %8
    i32 99, label %27
    i32 103, label %40
    i32 104, label %47
    i32 108, label %60
    i32 109, label %67
    i32 112, label %74
    i32 113, label %81
    i32 115, label %88
    i32 116, label %95
  ]

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @BoxFilter, align 4
  store i32 %13, i32* %2, align 4
  br label %104

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @BlackmanFilter, align 4
  store i32 %19, i32* %2, align 4
  br label %104

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @BlackmanFilter, align 4
  store i32 %25, i32* %2, align 4
  br label %104

26:                                               ; preds = %20
  br label %102

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @CubicFilter, align 4
  store i32 %32, i32* %2, align 4
  br label %104

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @CatromFilter, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %33
  br label %102

40:                                               ; preds = %1
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @GaussianFilter, align 4
  store i32 %45, i32* %2, align 4
  br label %104

46:                                               ; preds = %40
  br label %102

47:                                               ; preds = %1
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @HermiteFilter, align 4
  store i32 %52, i32* %2, align 4
  br label %104

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @HanningFilter, align 4
  store i32 %58, i32* %2, align 4
  br label %104

59:                                               ; preds = %53
  br label %102

60:                                               ; preds = %1
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @LanczosFilter, align 4
  store i32 %65, i32* %2, align 4
  br label %104

66:                                               ; preds = %60
  br label %102

67:                                               ; preds = %1
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @MitchellFilter, align 4
  store i32 %72, i32* %2, align 4
  br label %104

73:                                               ; preds = %67
  br label %102

74:                                               ; preds = %1
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @PointFilter, align 4
  store i32 %79, i32* %2, align 4
  br label %104

80:                                               ; preds = %74
  br label %102

81:                                               ; preds = %1
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @QuadraticFilter, align 4
  store i32 %86, i32* %2, align 4
  br label %104

87:                                               ; preds = %81
  br label %102

88:                                               ; preds = %1
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @SincFilter, align 4
  store i32 %93, i32* %2, align 4
  br label %104

94:                                               ; preds = %88
  br label %102

95:                                               ; preds = %1
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @TriangleFilter, align 4
  store i32 %100, i32* %2, align 4
  br label %104

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %1, %101, %94, %87, %80, %73, %66, %59, %46, %39, %26
  %103 = load i32, i32* @UndefinedFilter, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %99, %92, %85, %78, %71, %64, %57, %51, %44, %37, %31, %24, %18, %12
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
