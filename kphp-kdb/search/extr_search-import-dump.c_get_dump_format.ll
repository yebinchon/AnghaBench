; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_get_dump_format.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_get_dump_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@TF_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@TF_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"applications\00", align 1
@TF_APPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@TF_GROUPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@TF_EVENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"blog_posts\00", align 1
@TF_BLOG_POSTS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"memlite\00", align 1
@TF_MEMLITE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"members_lite\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"market_items\00", align 1
@TF_MARKET_ITEMS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"question\00", align 1
@TF_QUESTIONS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"topics\00", align 1
@TF_TOPICS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"minifeed\00", align 1
@TF_MINIFEED = common dso_local global i32 0, align 4
@TF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_dump_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TF_AUDIO, align 4
  store i32 %8, i32* %2, align 4
  br label %77

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @TF_VIDEO, align 4
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 12)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @TF_APPS, align 4
  store i32 %20, i32* %2, align 4
  br label %77

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strncmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @TF_GROUPS, align 4
  store i32 %26, i32* %2, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 6)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @TF_EVENTS, align 4
  store i32 %32, i32* %2, align 4
  br label %77

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 10)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @TF_BLOG_POSTS, align 4
  store i32 %38, i32* %2, align 4
  br label %77

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i64 7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @TF_MEMLITE, align 4
  store i32 %44, i32* %2, align 4
  br label %77

45:                                               ; preds = %39
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 12)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @TF_MEMLITE, align 4
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strncmp(i8* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i64 12)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @TF_MARKET_ITEMS, align 4
  store i32 %56, i32* %2, align 4
  br label %77

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strncmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 8)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @TF_QUESTIONS, align 4
  store i32 %62, i32* %2, align 4
  br label %77

63:                                               ; preds = %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 6)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @TF_TOPICS, align 4
  store i32 %68, i32* %2, align 4
  br label %77

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i64 8)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @TF_MINIFEED, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @TF_NONE, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
