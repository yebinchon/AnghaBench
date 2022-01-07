; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-date.c_cmd__date.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-date.c_cmd__date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage_msg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"human\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"show:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"approxidate\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"getnanos\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"is64bit\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"time_t-is64bit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__date(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i32 1
  store i8** %8, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @usage_msg, align 4
  %14 = call i32 @usage(i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = call i32 @show_relative_dates(i8** %22)
  br label %102

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = call i32 @show_human_dates(i8** %31)
  br label %101

33:                                               ; preds = %24
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @skip_prefix(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @show_dates(i8** %40, i8* %41)
  br label %100

43:                                               ; preds = %33
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = call i32 @parse_dates(i8** %50)
  br label %99

52:                                               ; preds = %43
  %53 = load i8**, i8*** %5, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = call i32 @parse_approxidate(i8** %59)
  br label %98

61:                                               ; preds = %52
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = call i32 @parse_approx_timestamp(i8** %68)
  br label %97

70:                                               ; preds = %61
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = call i32 @getnanos(i8** %77)
  br label %96

79:                                               ; preds = %70
  %80 = load i8**, i8*** %5, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %103

85:                                               ; preds = %79
  %86 = load i8**, i8*** %5, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %103

91:                                               ; preds = %85
  %92 = load i32, i32* @usage_msg, align 4
  %93 = call i32 @usage(i32 %92)
  br label %94

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %57
  br label %99

99:                                               ; preds = %98, %48
  br label %100

100:                                              ; preds = %99, %38
  br label %101

101:                                              ; preds = %100, %29
  br label %102

102:                                              ; preds = %101, %20
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %90, %84
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @show_relative_dates(i8**) #1

declare dso_local i32 @show_human_dates(i8**) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @show_dates(i8**, i8*) #1

declare dso_local i32 @parse_dates(i8**) #1

declare dso_local i32 @parse_approxidate(i8**) #1

declare dso_local i32 @parse_approx_timestamp(i8**) #1

declare dso_local i32 @getnanos(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
