; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_word_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_word_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { %struct.diff_options* }
%struct.diff_options = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@DIFF_WORDS_PLAIN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@DIFF_WORDS_COLOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"porcelain\00", align 1
@DIFF_WORDS_PORCELAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@DIFF_WORDS_NONE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"bad --word-diff argument: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_word_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_word_diff(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.option*, %struct.option** %5, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  store %struct.diff_options* %11, %struct.diff_options** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @BUG_ON_OPT_NEG(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** @DIFF_WORDS_PLAIN, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %58

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %31 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  %32 = load i64, i64* @DIFF_WORDS_COLOR, align 8
  %33 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %34 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %57

35:                                               ; preds = %25
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @DIFF_WORDS_PORCELAIN, align 8
  %41 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %56

43:                                               ; preds = %35
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @DIFF_WORDS_NONE, align 8
  %49 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %50 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %55

51:                                               ; preds = %43
  %52 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @error(i32 %52, i8* %53)
  store i32 %54, i32* %4, align 4
  br label %72

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %57, %20
  br label %71

59:                                               ; preds = %3
  %60 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %61 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DIFF_WORDS_NONE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8*, i8** @DIFF_WORDS_PLAIN, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %69 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %59
  br label %71

71:                                               ; preds = %70, %58
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
