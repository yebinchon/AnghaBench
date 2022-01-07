; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_shutdown.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clarsummary.h_clar_summary_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.clar_report* }
%struct.clar_report = type { i8*, %struct.clar_report*, i32, %struct.clar_error* }
%struct.clar_error = type { %struct.clar_error*, i32, i32 }
%struct.clar_summary = type { i8*, i32 }

@_clar = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"testcase\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"testsuite\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"testsuites\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"written summary file to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clar_summary_shutdown(%struct.clar_summary* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clar_summary*, align 8
  %4 = alloca %struct.clar_report*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clar_error*, align 8
  store %struct.clar_summary* %0, %struct.clar_summary** %3, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %8 = call i64 @clar_summary_testsuites(%struct.clar_summary* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %111

11:                                               ; preds = %1
  %12 = load %struct.clar_report*, %struct.clar_report** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 2), align 8
  store %struct.clar_report* %12, %struct.clar_report** %4, align 8
  br label %13

13:                                               ; preds = %92, %11
  %14 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %15 = icmp ne %struct.clar_report* %14, null
  br i1 %15, label %16, label %93

16:                                               ; preds = %13
  %17 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %18 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %17, i32 0, i32 3
  %19 = load %struct.clar_error*, %struct.clar_error** %18, align 8
  store %struct.clar_error* %19, %struct.clar_error** %6, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %25 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* %23, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22, %16
  %30 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %31 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %32 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @time(i32* null)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_clar, i32 0, i32 0), align 8
  %37 = call i64 @clar_summary_testsuite(%struct.clar_summary* %30, i32 0, i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %34, i32 0, i32 %35, i32 %36, i32 0)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %111

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %43 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  %45 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %46 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %47 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clar_summary_testcase(%struct.clar_summary* %45, i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %50

50:                                               ; preds = %64, %41
  %51 = load %struct.clar_error*, %struct.clar_error** %6, align 8
  %52 = icmp ne %struct.clar_error* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %55 = load %struct.clar_error*, %struct.clar_error** %6, align 8
  %56 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.clar_error*, %struct.clar_error** %6, align 8
  %59 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @clar_summary_failure(%struct.clar_summary* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %111

64:                                               ; preds = %53
  %65 = load %struct.clar_error*, %struct.clar_error** %6, align 8
  %66 = getelementptr inbounds %struct.clar_error, %struct.clar_error* %65, i32 0, i32 0
  %67 = load %struct.clar_error*, %struct.clar_error** %66, align 8
  store %struct.clar_error* %67, %struct.clar_error** %6, align 8
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %70 = call i64 @clar_summary_close_tag(%struct.clar_summary* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %111

73:                                               ; preds = %68
  %74 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %75 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %74, i32 0, i32 1
  %76 = load %struct.clar_report*, %struct.clar_report** %75, align 8
  store %struct.clar_report* %76, %struct.clar_report** %4, align 8
  %77 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %78 = icmp ne %struct.clar_report* %77, null
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i8*, i8** %5, align 8
  %81 = load %struct.clar_report*, %struct.clar_report** %4, align 8
  %82 = getelementptr inbounds %struct.clar_report, %struct.clar_report* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strcmp(i8* %80, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79, %73
  %87 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %88 = call i64 @clar_summary_close_tag(%struct.clar_summary* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %111

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91, %79
  br label %13

93:                                               ; preds = %13
  %94 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %95 = call i64 @clar_summary_close_tag(%struct.clar_summary* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %99 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @fclose(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %93
  br label %111

104:                                              ; preds = %97
  %105 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %106 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %107)
  %109 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %110 = call i32 @free(%struct.clar_summary* %109)
  store i32 0, i32* %2, align 4
  br label %118

111:                                              ; preds = %103, %90, %72, %63, %39, %10
  %112 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %113 = getelementptr inbounds %struct.clar_summary, %struct.clar_summary* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @fclose(i32 %114)
  %116 = load %struct.clar_summary*, %struct.clar_summary** %3, align 8
  %117 = call i32 @free(%struct.clar_summary* %116)
  store i32 -1, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %104
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @clar_summary_testsuites(%struct.clar_summary*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @clar_summary_testsuite(%struct.clar_summary*, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @clar_summary_testcase(%struct.clar_summary*, i32, i8*, i32) #1

declare dso_local i64 @clar_summary_failure(%struct.clar_summary*, i8*, i32, i32) #1

declare dso_local i64 @clar_summary_close_tag(%struct.clar_summary*, i8*, i32) #1

declare dso_local i64 @fclose(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @free(%struct.clar_summary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
