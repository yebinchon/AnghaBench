; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_argc = common dso_local global i32 0, align 4
@global_argv = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown option %s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"cat-blob-fd=\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown option --%s\00", align 1
@fast_import_usage = common dso_local global i32 0, align 4
@seen_data_command = common dso_local global i32 0, align 4
@import_marks_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_argv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %49, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @global_argc, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %52

7:                                                ; preds = %3
  %8 = load i8**, i8*** @global_argv, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 45
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %7
  br label %52

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = call i64 @skip_prefix(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @parse_one_option(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %49

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @parse_one_feature(i8* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %49

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @skip_prefix(i8* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %2)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @option_cat_blob_fd(i8* %44)
  br label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %43, %38, %33
  %50 = load i32, i32* %1, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %3

52:                                               ; preds = %21, %3
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @global_argc, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @fast_import_usage, align 4
  %58 = call i32 @usage(i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  store i32 1, i32* @seen_data_command, align 4
  %60 = load i64, i64* @import_marks_file, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (...) @read_marks()
  br label %64

64:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @parse_one_option(i8*) #1

declare dso_local i64 @parse_one_feature(i8*, i32) #1

declare dso_local i32 @option_cat_blob_fd(i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @read_marks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
