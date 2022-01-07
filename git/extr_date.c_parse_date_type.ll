; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_parse_date_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_parse_date_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@DATE_RELATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"iso8601-strict\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iso-strict\00", align 1
@DATE_ISO8601_STRICT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"iso8601\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"iso\00", align 1
@DATE_ISO8601 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"rfc2822\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rfc\00", align 1
@DATE_RFC2822 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@DATE_SHORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@DATE_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"human\00", align 1
@DATE_HUMAN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@DATE_RAW = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@DATE_UNIX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@DATE_STRFTIME = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"unknown date format %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_date_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_date_type(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = call i64 @skip_prefix(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @DATE_RELATIVE, align 4
  store i32 %11, i32* %3, align 4
  br label %93

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = call i64 @skip_prefix(i8* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = call i64 @skip_prefix(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = load i32, i32* @DATE_ISO8601_STRICT, align 4
  store i32 %23, i32* %3, align 4
  br label %93

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @skip_prefix(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = call i64 @skip_prefix(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24
  %35 = load i32, i32* @DATE_ISO8601, align 4
  store i32 %35, i32* %3, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = call i64 @skip_prefix(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = call i64 @skip_prefix(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36
  %47 = load i32, i32* @DATE_RFC2822, align 4
  store i32 %47, i32* %3, align 4
  br label %93

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = call i64 @skip_prefix(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @DATE_SHORT, align 4
  store i32 %54, i32* %3, align 4
  br label %93

55:                                               ; preds = %48
  %56 = load i8*, i8** %4, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = call i64 @skip_prefix(i8* %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @DATE_NORMAL, align 4
  store i32 %61, i32* %3, align 4
  br label %93

62:                                               ; preds = %55
  %63 = load i8*, i8** %4, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = call i64 @skip_prefix(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @DATE_HUMAN, align 4
  store i32 %68, i32* %3, align 4
  br label %93

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = load i8**, i8*** %5, align 8
  %72 = call i64 @skip_prefix(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @DATE_RAW, align 4
  store i32 %75, i32* %3, align 4
  br label %93

76:                                               ; preds = %69
  %77 = load i8*, i8** %4, align 8
  %78 = load i8**, i8*** %5, align 8
  %79 = call i64 @skip_prefix(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @DATE_UNIX, align 4
  store i32 %82, i32* %3, align 4
  br label %93

83:                                               ; preds = %76
  %84 = load i8*, i8** %4, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = call i64 @skip_prefix(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @DATE_STRFTIME, align 4
  store i32 %89, i32* %3, align 4
  br label %93

90:                                               ; preds = %83
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %88, %81, %74, %67, %60, %53, %46, %34, %22, %10
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
