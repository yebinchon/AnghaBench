; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__trusted.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__trusted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@GIT_INDEX_CAPABILITY_NO_FILEMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"exec_off\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"filemodes/exec_off.0\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"exec_on\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"filemodes/exec_on.0\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"filemodes/exec_off.1\00", align 1
@GIT_FILEMODE_BLOB_EXECUTABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"filemodes/exec_on.1\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"filemodes/new_off\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"blah\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"new_off\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"filemodes/new_on\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"new_on\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_filemodes__trusted() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @cl_is_chmod_supported()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %54

5:                                                ; preds = %0
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @cl_repo_set_bool(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_repository_index(i32** %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_index_caps(i32* %11)
  %13 = load i32, i32* @GIT_INDEX_CAPABILITY_NO_FILEMODE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @cl_assert(i32 %16)
  %18 = call i32 @replace_file_with_mode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 420)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %21 = call i32 @add_and_check_mode(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = call i32 @replace_file_with_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 420)
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %25 = call i32 @add_and_check_mode(i32* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = call i32 @replace_file_with_mode(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 493)
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %29 = call i32 @add_and_check_mode(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = call i32 @replace_file_with_mode(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 493)
  %31 = load i32*, i32** %1, align 8
  %32 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %33 = call i32 @add_and_check_mode(i32* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @O_WRONLY, align 4
  %35 = load i32, i32* @O_CREAT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @O_TRUNC, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %38, i32 420)
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %42 = call i32 @add_and_check_mode(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @O_WRONLY, align 4
  %44 = load i32, i32* @O_CREAT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @O_TRUNC, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @cl_git_write2file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %47, i32 493)
  %49 = load i32*, i32** %1, align 8
  %50 = load i32, i32* @GIT_FILEMODE_BLOB_EXECUTABLE, align 4
  %51 = call i32 @add_and_check_mode(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i32 @git_index_free(i32* %52)
  br label %54

54:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_caps(i32*) #1

declare dso_local i32 @replace_file_with_mode(i8*, i8*, i32) #1

declare dso_local i32 @add_and_check_mode(i32*, i8*, i32) #1

declare dso_local i32 @cl_git_write2file(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
