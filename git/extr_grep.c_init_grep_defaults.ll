; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_init_grep_defaults.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_init_grep_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32, i32, i32, i32, i32, i64, i32*, i32, %struct.repository* }
%struct.repository = type { i32 }

@grep_defaults = common dso_local global %struct.grep_opt zeroinitializer, align 8
@init_grep_defaults.run_once = internal global i32 0, align 4
@GREP_PATTERN_TYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@GREP_COLOR_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GREP_COLOR_FILENAME = common dso_local global i64 0, align 8
@GREP_COLOR_FUNCTION = common dso_local global i64 0, align 8
@GREP_COLOR_LINENO = common dso_local global i64 0, align 8
@GREP_COLOR_COLUMNNO = common dso_local global i64 0, align 8
@GREP_COLOR_MATCH_CONTEXT = common dso_local global i64 0, align 8
@GIT_COLOR_BOLD_RED = common dso_local global i8* null, align 8
@GREP_COLOR_MATCH_SELECTED = common dso_local global i64 0, align 8
@GREP_COLOR_SELECTED = common dso_local global i64 0, align 8
@GREP_COLOR_SEP = common dso_local global i64 0, align 8
@GIT_COLOR_CYAN = common dso_local global i8* null, align 8
@std_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_grep_defaults(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  %3 = alloca %struct.grep_opt*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  store %struct.grep_opt* @grep_defaults, %struct.grep_opt** %3, align 8
  %4 = load i32, i32* @init_grep_defaults.run_once, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %97

7:                                                ; preds = %1
  %8 = load i32, i32* @init_grep_defaults.run_once, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @init_grep_defaults.run_once, align 4
  %10 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %11 = call i32 @memset(%struct.grep_opt* %10, i32 0, i32 56)
  %12 = load %struct.repository*, %struct.repository** %2, align 8
  %13 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %14 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %13, i32 0, i32 8
  store %struct.repository* %12, %struct.repository** %14, align 8
  %15 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %16 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %18 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 2
  store i32 -1, i32* %20, align 8
  %21 = load i32, i32* @GREP_PATTERN_TYPE_UNSPECIFIED, align 4
  %22 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %23 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %25 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @GREP_COLOR_CONTEXT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @color_set(i32 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %32 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @GREP_COLOR_FILENAME, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @color_set(i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %39 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @GREP_COLOR_FUNCTION, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @color_set(i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %46 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GREP_COLOR_LINENO, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @color_set(i32 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %53 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @GREP_COLOR_COLUMNNO, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @color_set(i32 %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %60 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %59, i32 0, i32 6
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @GREP_COLOR_MATCH_CONTEXT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** @GIT_COLOR_BOLD_RED, align 8
  %66 = call i32 @color_set(i32 %64, i8* %65)
  %67 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %68 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @GREP_COLOR_MATCH_SELECTED, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** @GIT_COLOR_BOLD_RED, align 8
  %74 = call i32 @color_set(i32 %72, i8* %73)
  %75 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %76 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @GREP_COLOR_SELECTED, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @color_set(i32 %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %83 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @GREP_COLOR_SEP, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** @GIT_COLOR_CYAN, align 8
  %89 = call i32 @color_set(i32 %87, i8* %88)
  %90 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %91 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %90, i32 0, i32 5
  store i64 0, i64* %91, align 8
  %92 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %93 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %92, i32 0, i32 3
  store i32 -1, i32* %93, align 4
  %94 = load i32, i32* @std_output, align 4
  %95 = load %struct.grep_opt*, %struct.grep_opt** %3, align 8
  %96 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @memset(%struct.grep_opt*, i32, i32) #1

declare dso_local i32 @color_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
