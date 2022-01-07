; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_invalid_filename.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__add_invalid_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"./invalid\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"./invalid/subdir\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"./invalid/.GIT\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"./invalid/.GiT\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c".git/hello\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c".GIT/hello\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".GiT/hello\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"./.git/hello\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"./foo\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"./bar\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"subdir/../bar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__add_invalid_filename() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @p_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 448)
  %3 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = call i32 @p_mkdir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %6 = call i32 @cl_must_pass(i32 %5)
  %7 = call i32 @git_path_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %11 = call i32 @cl_must_pass(i32 %10)
  br label %12

12:                                               ; preds = %9, %0
  %13 = call i32 @git_path_exists(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %17 = call i32 @cl_must_pass(i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @add_invalid_filename(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @add_invalid_filename(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @add_invalid_filename(i32* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @add_invalid_filename(i32* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @add_invalid_filename(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @add_invalid_filename(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @add_invalid_filename(i32* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_repository_free(i32* %33)
  %35 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @git_path_exists(i8*) #1

declare dso_local i32 @add_invalid_filename(i32*, i8*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
