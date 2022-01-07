; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_check_literal.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_check_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid literal\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Invalid numeric literal\00", align 1
@JV_KIND_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jv_parser*)* @check_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_literal(%struct.jv_parser* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.jv_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %3, align 8
  %10 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %11 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %100

15:                                               ; preds = %1
  store i8* null, i8** %4, align 8
  %16 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %17 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %27 [
    i32 116, label %21
    i32 102, label %23
    i32 110, label %25
  ]

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 4, i32* %5, align 4
  %22 = call i32 (...) @jv_true()
  store i32 %22, i32* %6, align 4
  br label %27

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32 5, i32* %5, align 4
  %24 = call i32 (...) @jv_false()
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i32 4, i32* %5, align 4
  %26 = call i32 (...) @jv_null()
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15, %25, %23, %21
  %28 = load i8*, i8** %4, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %27
  %31 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %32 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %100

37:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %44 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %100

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @value(%struct.jv_parser* %63, i32 %64)
  %66 = call i32 @TRY(i32 %65)
  br label %97

67:                                               ; preds = %27
  %68 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %69 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %72 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32 0, i32* %75, align 4
  store i8* null, i8** %8, align 8
  %76 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %77 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %76, i32 0, i32 2
  %78 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %79 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = call double @jvp_strtod(i32* %77, i8* %81, i8** %8)
  store double %82, double* %9, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %67
  %86 = load i8*, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %67
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %100

91:                                               ; preds = %85
  %92 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %93 = load double, double* %9, align 8
  %94 = call i32 @jv_number(double %93)
  %95 = call i32 @value(%struct.jv_parser* %92, i32 %94)
  %96 = call i32 @TRY(i32 %95)
  br label %97

97:                                               ; preds = %91, %62
  %98 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %99 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  store i8* null, i8** %2, align 8
  br label %100

100:                                              ; preds = %97, %90, %57, %36, %14
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i32 @jv_true(...) #1

declare dso_local i32 @jv_false(...) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @TRY(i32) #1

declare dso_local i32 @value(%struct.jv_parser*, i32) #1

declare dso_local double @jvp_strtod(i32*, i8*, i8**) #1

declare dso_local i32 @jv_number(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
