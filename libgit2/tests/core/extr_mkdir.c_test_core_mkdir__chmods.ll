; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__chmods.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__chmods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@cleanup_chmod_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mode/is/important\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"r/mode\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"r/mode/is\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"r/mode/is/important\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"mode2/is2/important2\00", align 1
@GIT_MKDIR_CHMOD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"r/mode2\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"r/mode2/is2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"r/mode2/is2/important2\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"mode3/is3/important3\00", align 1
@GIT_MKDIR_CHMOD_PATH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"r/mode3\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"r/mode3/is3\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"r/mode3/is3/important3\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"mode2/is2/important2.1\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"r/mode2/is2/important2.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_mkdir__chmods() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = alloca i32*, align 8
  %3 = call i32* @git__malloc(i32 4)
  store i32* %3, i32** %2, align 8
  %4 = call i32 @p_umask(i32 18)
  %5 = load i32*, i32** %2, align 8
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @cleanup_chmod_root, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @cl_set_cleanup(i32 %6, i32* %7)
  %9 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 0)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %12 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %11, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_path_lstat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @check_mode(i32 493, i32 %17)
  %19 = call i32 @git_path_lstat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %1)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @check_mode(i32 493, i32 %22)
  %24 = call i32 @git_path_lstat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %1)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @check_mode(i32 493, i32 %27)
  %29 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %30 = load i32, i32* @GIT_MKDIR_CHMOD, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %31, i32* null)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_path_lstat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.stat* %1)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @check_mode(i32 493, i32 %37)
  %39 = call i32 @git_path_lstat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.stat* %1)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @check_mode(i32 493, i32 %42)
  %44 = call i32 @git_path_lstat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.stat* %1)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @check_mode(i32 511, i32 %47)
  %49 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %50 = load i32, i32* @GIT_MKDIR_CHMOD_PATH, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %51, i32* null)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = call i32 @git_path_lstat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct.stat* %1)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @check_mode(i32 511, i32 %57)
  %59 = call i32 @git_path_lstat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), %struct.stat* %1)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @check_mode(i32 511, i32 %62)
  %64 = call i32 @git_path_lstat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), %struct.stat* %1)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @check_mode(i32 511, i32 %67)
  %69 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %70 = load i32, i32* @GIT_MKDIR_CHMOD, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %71, i32* null)
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = call i32 @git_path_lstat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %1)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @check_mode(i32 493, i32 %77)
  %79 = call i32 @git_path_lstat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.stat* %1)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @check_mode(i32 493, i32 %82)
  %84 = call i32 @git_path_lstat(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %1)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @check_mode(i32 511, i32 %87)
  %89 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %90 = load i32, i32* @GIT_MKDIR_CHMOD_PATH, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 511, i32 %91, i32* null)
  %93 = call i32 @cl_git_pass(i32 %92)
  %94 = call i32 @git_path_lstat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %struct.stat* %1)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @check_mode(i32 511, i32 %97)
  %99 = call i32 @git_path_lstat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), %struct.stat* %1)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @check_mode(i32 511, i32 %102)
  %104 = call i32 @git_path_lstat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), %struct.stat* %1)
  %105 = call i32 @cl_git_pass(i32 %104)
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @check_mode(i32 511, i32 %107)
  ret void
}

declare dso_local i32* @git__malloc(i32) #1

declare dso_local i32 @p_umask(i32) #1

declare dso_local i32 @cl_set_cleanup(i32, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @check_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
