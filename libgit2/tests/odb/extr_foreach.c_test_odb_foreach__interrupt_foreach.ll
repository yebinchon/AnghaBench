; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_foreach.c_test_odb_foreach__interrupt_foreach.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_foreach.c_test_odb_foreach__interrupt_foreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@_odb = common dso_local global i32 0, align 4
@foreach_stop_cb = common dso_local global i32 0, align 4
@foreach_stop_cb_positive_ret = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"onlyloose.git\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@foreach_stop_first_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_foreach__interrupt_foreach() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @cl_fixture(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_repository_open(i32* @_repo, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @_repo, align 4
  %7 = call i32 @git_repository_odb(i32* @_odb, i32 %6)
  %8 = load i32, i32* @_odb, align 4
  %9 = load i32, i32* @foreach_stop_cb, align 4
  %10 = call i32 @git_odb_foreach(i32 %8, i32 %9, i32* %1)
  %11 = call i32 @cl_assert_equal_i(i32 -321, i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 1000
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  store i32 0, i32* %1, align 4
  %16 = load i32, i32* @_odb, align 4
  %17 = load i32, i32* @foreach_stop_cb_positive_ret, align 4
  %18 = call i32 @git_odb_foreach(i32 %16, i32 %17, i32* %1)
  %19 = call i32 @cl_assert_equal_i(i32 321, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 1000
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  %24 = load i32, i32* @_odb, align 4
  %25 = call i32 @git_odb_free(i32 %24)
  %26 = load i32, i32* @_repo, align 4
  %27 = call i32 @git_repository_free(i32 %26)
  %28 = call i32 @git_repository_init(i32* @_repo, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @_repo, align 4
  %31 = call i32 @git_repository_odb(i32* @_odb, i32 %30)
  %32 = load i32, i32* @_odb, align 4
  %33 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %34 = call i32 @git_odb_write(i32* %2, i32 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32, i32* @_odb, align 4
  %37 = load i32, i32* @foreach_stop_first_cb, align 4
  %38 = call i32 @git_odb_foreach(i32 %36, i32 %37, i32* %1)
  %39 = call i32 @cl_assert_equal_i(i32 -123, i32 %38)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_repository_odb(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_odb_foreach(i32, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_odb_free(i32) #1

declare dso_local i32 @git_repository_free(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git_odb_write(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
