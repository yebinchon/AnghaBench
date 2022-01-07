; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_copy.c_test_core_copy__tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_copy.c_test_core_copy__tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"File content\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"src/b\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"src/c/d\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"src/c/e\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"src/f1\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"src/b/f2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"src/c/f3\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"src/c/d/f4\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"src/c/d/.f5\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"../../b/f2\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"src/c/d/l1\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"t1\00", align 1
@GIT_CPDIR_COPY_SYMLINKS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"t1/b\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"t1/c\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"t1/c/d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"t1/c/e\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"t1/f1\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"t1/b/f2\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"t1/c/f3\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"t1/c/d/f4\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"t1/c/d/.f5\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"t1/c/d/l1\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"t2\00", align 1
@GIT_CPDIR_CREATE_EMPTY_DIRS = common dso_local global i32 0, align 4
@GIT_CPDIR_COPY_DOTFILES = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [5 x i8] c"t2/b\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"t2/c\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"t2/c/d\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"t2/c/e\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"t2/f1\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"t2/b/f2\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"t2/c/f3\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"t2/c/d/f4\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"t2/c/d/.f5\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"t2/c/d/l1\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"t3\00", align 1
@GIT_CPDIR_LINK_FILES = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"t3/b\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"t3/c\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"t3/c/d\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"t3/c/e\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"t3/f1\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"t3/b/f2\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"t3/c/f3\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"t3/c/d/f4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_copy__tree() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %4 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 509, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %7 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 509, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %10 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 509, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %20)
  %22 = call i64 @p_symlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_path_isdir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %27 = call i32 @cl_assert(i32 %26)
  %28 = call i32 @git_path_isdir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @git_path_isdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @cl_assert(i32 %30)
  %32 = call i32 @git_path_isfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @GIT_CPDIR_COPY_SYMLINKS, align 4
  %35 = call i32 @git_futils_cp_r(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %34, i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %40 = call i32 @cl_assert(i32 %39)
  %41 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %42 = call i32 @cl_assert(i32 %41)
  %43 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = call i32 @git_path_isfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %51 = call i32 @cl_assert(i32 %50)
  %52 = call i32 @git_path_isfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %53 = call i32 @cl_assert(i32 %52)
  %54 = call i32 @git_path_isfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %55 = call i32 @cl_assert(i32 %54)
  %56 = call i32 @git_path_isfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %57 = call i32 @cl_assert(i32 %56)
  %58 = call i32 @git_path_isfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = call i32 @git_path_lstat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), %struct.stat* %1)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @S_ISREG(i32 %66)
  %68 = call i32 @cl_assert(i32 %67)
  %69 = load i8*, i8** %2, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @cl_assert(i32 %74)
  %76 = call i32 @git_path_lstat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), %struct.stat* %1)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @S_ISLNK(i32 %79)
  %81 = call i32 @cl_assert(i32 %80)
  %82 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %83 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* null, i32 %82)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @cl_assert(i32 %88)
  %90 = load i32, i32* @GIT_CPDIR_CREATE_EMPTY_DIRS, align 4
  %91 = load i32, i32* @GIT_CPDIR_COPY_DOTFILES, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @git_futils_cp_r(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %92, i32 0)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %96 = call i32 @cl_assert(i32 %95)
  %97 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %98 = call i32 @cl_assert(i32 %97)
  %99 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %100 = call i32 @cl_assert(i32 %99)
  %101 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %102 = call i32 @cl_assert(i32 %101)
  %103 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %104 = call i32 @cl_assert(i32 %103)
  %105 = call i32 @git_path_isfile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0))
  %106 = call i32 @cl_assert(i32 %105)
  %107 = call i32 @git_path_isfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  %108 = call i32 @cl_assert(i32 %107)
  %109 = call i32 @git_path_isfile(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %110 = call i32 @cl_assert(i32 %109)
  %111 = call i32 @git_path_isfile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  %112 = call i32 @cl_assert(i32 %111)
  %113 = call i32 @git_path_isfile(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %114 = call i32 @cl_assert(i32 %113)
  %115 = call i32 @git_path_lstat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %struct.stat* %1)
  %116 = call i32 @cl_git_fail(i32 %115)
  %117 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %118 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32* null, i32 %117)
  %119 = call i32 @cl_git_pass(i32 %118)
  %120 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i32 @cl_assert(i32 %123)
  %125 = load i32, i32* @GIT_CPDIR_CREATE_EMPTY_DIRS, align 4
  %126 = load i32, i32* @GIT_CPDIR_LINK_FILES, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @git_futils_cp_r(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i32 %127, i32 0)
  %129 = call i32 @cl_git_pass(i32 %128)
  %130 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %131 = call i32 @cl_assert(i32 %130)
  %132 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %133 = call i32 @cl_assert(i32 %132)
  %134 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0))
  %135 = call i32 @cl_assert(i32 %134)
  %136 = call i32 @git_path_isdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %137 = call i32 @cl_assert(i32 %136)
  %138 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %139 = call i32 @cl_assert(i32 %138)
  %140 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %141 = call i32 @cl_assert(i32 %140)
  %142 = call i32 @assert_hard_link(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  %143 = call i32 @assert_hard_link(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  %144 = call i32 @assert_hard_link(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0))
  %145 = call i32 @assert_hard_link(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  %146 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %147 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32* null, i32 %146)
  %148 = call i32 @cl_git_pass(i32 %147)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @p_symlink(i8*, i8*) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @git_futils_cp_r(i8*, i8*, i32, i32) #1

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @assert_hard_link(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
