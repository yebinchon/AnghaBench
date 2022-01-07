; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__fsync_obeys_repo_setting.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_loose.c_test_odb_loose__fsync_obeys_repo_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"test-objects\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"No fsync here\0A\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@p_fsync__cnt = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"core.fsyncObjectFiles\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Now fsync\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_loose__fsync_obeys_repo_setting() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_repository_odb__weakptr(i32** %2, i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %11 = call i32 @git_odb_write(i32* %3, i32* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 14, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i64, i64* @p_fsync__cnt, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_repository_free(i32* %17)
  %19 = call i32 @git_repository_open(i32** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @cl_repo_set_bool(i32* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_repository_odb__weakptr(i32** %2, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %28 = call i32 @git_odb_write(i32* %3, i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10, i32 %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i64, i64* @p_fsync__cnt, align 8
  %31 = icmp sgt i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_repository_free(i32* %34)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #1

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @cl_repo_set_bool(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
