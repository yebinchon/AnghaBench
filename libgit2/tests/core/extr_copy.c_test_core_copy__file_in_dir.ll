; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_copy.c_test_core_copy__file_in_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_copy.c_test_core_copy__file_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"This is some other stuff to copy\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"an_dir/in_a_dir\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"an_dir/in_a_dir/copy_me\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"an_dir\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"an_dir/second_dir/and_more/copy_me_two\00", align 1
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_copy__file_in_dir() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %4 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 509, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %6)
  %8 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @cl_assert(i32 %8)
  %10 = call i32 @git_futils_mkpath2file(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 509)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_futils_cp(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 436)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_path_lstat(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), %struct.stat* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @S_ISREG(i32 %17)
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %28 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_path_isdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @cl_assert(i32 %33)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @git_futils_mkpath2file(i8*, i32) #1

declare dso_local i32 @git_futils_cp(i8*, i8*, i32) #1

declare dso_local i32 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
