; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_hashfile.c_test_repo_hashfile__filtered.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_hashfile.c_test_repo_hashfile__filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"status/.gitattributes\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"*.txt text\0A*.bin binary\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"status/testfile.txt\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"content\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"status/testfile.bin\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"other\0D\0Astuff\0D\0A\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"testfile.txt\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"testfile.bin\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"foo.bin\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"foo.txt\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_hashfile__filtered() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_repo, align 4
  %4 = call i32 @cl_repo_set_bool(i32 %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %5 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %8 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %9 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @_repo, align 4
  %12 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %13 = call i32 @git_repository_hashfile(i32* %2, i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %12, i8* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_oid_cmp(i32* %1, i32* %2)
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %18 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %22 = call i32 @git_repository_hashfile(i32* %2, i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %21, i8* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %25 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %26 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @_repo, align 4
  %29 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %30 = call i32 @git_repository_hashfile(i32* %2, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %33 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %34 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @_repo, align 4
  %37 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %38 = call i32 @git_repository_hashfile(i32* %2, i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = call i32 @git_oid_cmp(i32* %1, i32* %2)
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %43 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32, i32* @_repo, align 4
  %46 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %47 = call i32 @git_repository_hashfile(i32* %2, i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %50 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %51 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @_repo, align 4
  %54 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %55 = call i32 @git_repository_hashfile(i32* %2, i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0))
  %56 = call i32 @cl_git_pass(i32 %55)
  %57 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %58 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %59 = call i32 @cl_git_fail(i32 %58)
  %60 = load i32, i32* @_repo, align 4
  %61 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %62 = call i32 @git_repository_hashfile(i32* %2, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %61, i8* null)
  %63 = call i32 @cl_git_fail(i32 %62)
  ret void
}

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #1

declare dso_local i32 @cl_git_append2file(i8*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_hashfile(i32*, i8*, i32) #1

declare dso_local i32 @git_repository_hashfile(i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_oid_cmp(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
