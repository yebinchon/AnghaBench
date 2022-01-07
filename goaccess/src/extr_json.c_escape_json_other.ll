; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_json.c_escape_json_other.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_json.c_escape_json_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@escape_html_output = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"&#39;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\u2028\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\\u2029\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**)* @escape_json_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @escape_json_other(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca [2 x i8], align 1
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i64, i64* @escape_html_output, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %26 [
    i32 39, label %14
    i32 38, label %17
    i32 60, label %20
    i32 62, label %23
  ]

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @pjson(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %105

17:                                               ; preds = %9
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 (i32*, i8*, ...) @pjson(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %105

20:                                               ; preds = %9
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 (i32*, i8*, ...) @pjson(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %105

23:                                               ; preds = %9
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 (i32*, i8*, ...) @pjson(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %105

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 %31, 31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @snprintf(i8* %34, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8 signext %37)
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %41 = call i32 (i32*, i8*, ...) @pjson(i32* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  br label %105

42:                                               ; preds = %27
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 226
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 168
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 (i32*, i8*, ...) @pjson(i32* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %65, align 8
  br label %104

68:                                               ; preds = %55, %48, %42
  %69 = load i8**, i8*** %4, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 226
  br i1 %73, label %74, label %94

74:                                               ; preds = %68
  %75 = load i8**, i8*** %4, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i8**, i8*** %4, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 169
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 (i32*, i8*, ...) @pjson(i32* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %91 = load i8**, i8*** %4, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %91, align 8
  br label %103

94:                                               ; preds = %81, %74, %68
  %95 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %96 = load i8**, i8*** %4, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @snprintf(i8* %95, i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8 signext %98)
  %100 = load i32*, i32** %3, align 8
  %101 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %102 = call i32 (i32*, i8*, ...) @pjson(i32* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %94, %88
  br label %104

104:                                              ; preds = %103, %62
  br label %105

105:                                              ; preds = %14, %17, %20, %23, %104, %33
  ret void
}

declare dso_local i32 @pjson(i32*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
