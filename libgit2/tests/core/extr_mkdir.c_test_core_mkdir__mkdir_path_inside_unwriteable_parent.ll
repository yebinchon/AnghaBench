; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__mkdir_path_inside_unwriteable_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__mkdir_path_inside_unwriteable_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@cleanup_chmod_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mode/is/important\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"r/mode\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mode/is/okay/inside\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"r/mode/is/okay/inside\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_mkdir__mkdir_path_inside_unwriteable_parent() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @cl_is_chmod_supported()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %43

6:                                                ; preds = %0
  %7 = call i32* @git__malloc(i32 4)
  store i32* %7, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @cl_assert(i32 %9)
  %11 = call i32 @p_umask(i32 18)
  %12 = load i32*, i32** %2, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @cleanup_chmod_root, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @cl_set_cleanup(i32 %13, i32* %14)
  %16 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 0)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %19 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = call i32 @git_path_lstat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @check_mode(i32 493, i32 %24)
  %26 = call i32 @p_chmod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 73)
  %27 = call i32 @cl_must_pass(i32 %26)
  %28 = call i32 @git_path_lstat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %1)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @check_mode(i32 73, i32 %31)
  %33 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %34 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %33, i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = call i32 @git_path_lstat(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %1)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @check_mode(i32 493, i32 %39)
  %41 = call i32 @p_chmod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %42 = call i32 @cl_must_pass(i32 %41)
  br label %43

43:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git__malloc(i32) #1

declare dso_local i32 @p_umask(i32) #1

declare dso_local i32 @cl_set_cleanup(i32, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @check_mode(i32, i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
