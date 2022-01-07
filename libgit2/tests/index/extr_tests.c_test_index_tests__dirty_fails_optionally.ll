; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__dirty_fails_optionally.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__dirty_fails_optionally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Hi.\0A\00", align 1
@GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY = common dso_local global i32 0, align 4
@GIT_EINDEXDIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__dirty_fails_optionally() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 24, i1 false)
  %5 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_repository_index(i32** %2, i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_index_add_from_buffer(i32* %12, %struct.TYPE_5__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_is_dirty(i32* %15)
  %17 = call i32 @cl_assert(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_checkout_head(i32* %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i8*, i8** @GIT_FILEMODE_BLOB, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_add_from_buffer(i32* %24, %struct.TYPE_5__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_index_is_dirty(i32* %27)
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32, i32* @GIT_OPT_ENABLE_UNSAVED_INDEX_SAFETY, align 4
  %31 = call i32 @git_libgit2_opts(i32 %30, i32 1)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @GIT_EINDEXDIRTY, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_checkout_head(i32* %34, i32* null)
  %36 = call i32 @cl_git_fail_with(i32 %33, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_index_free(i32* %37)
  %39 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_index_is_dirty(i32*) #2

declare dso_local i32 @git_checkout_head(i32*, i32*) #2

declare dso_local i32 @git_libgit2_opts(i32, i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
