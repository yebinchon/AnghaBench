; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_one_feature.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_one_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"date-format=\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"import-marks=\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"import-marks-if-exists=\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"export-marks=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"get-mark\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cat-blob\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"relative-marks\00", align 1
@relative_marks_paths = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"no-relative-marks\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@require_explicit_termination = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@force_update = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse_one_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_one_feature(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @skip_prefix(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %6)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @option_date_format(i8* %11)
  br label %92

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @skip_prefix(i8* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @option_import_marks(i8* %18, i32 %19, i32 0)
  br label %91

21:                                               ; preds = %13
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @skip_prefix(i8* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @option_import_marks(i8* %26, i32 %27, i32 1)
  br label %90

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @skip_prefix(i8* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @option_export_marks(i8* %34)
  br label %89

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %88

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %87

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %86

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  store i32 1, i32* @relative_marks_paths, align 4
  br label %85

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 0, i32* @relative_marks_paths, align 4
  br label %84

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 1, i32* @require_explicit_termination, align 4
  br label %83

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 1, i32* @force_update, align 4
  br label %82

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i8*, i8** %4, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75, %71
  br label %81

80:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %93

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %55
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %45
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88, %33
  br label %90

90:                                               ; preds = %89, %25
  br label %91

91:                                               ; preds = %90, %17
  br label %92

92:                                               ; preds = %91, %10
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %80
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @option_date_format(i8*) #1

declare dso_local i32 @option_import_marks(i8*, i32, i32) #1

declare dso_local i32 @option_export_marks(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
