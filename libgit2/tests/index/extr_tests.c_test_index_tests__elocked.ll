; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__elocked.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__elocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@cleanup_myrepo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@GIT_ERROR_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__elocked() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %8 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_repository_index(%struct.TYPE_7__** %2, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @git_filebuf_open(i32* %3, i32 %15, i32 0, i32 438)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = call i32 @git_index_write(%struct.TYPE_7__* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @GIT_ELOCKED, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cl_assert_equal_i(i32 %20, i32 %21)
  %23 = call %struct.TYPE_8__* (...) @git_error_last()
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GIT_ERROR_INDEX, align 4
  %28 = call i32 @cl_assert_equal_i(i32 %26, i32 %27)
  %29 = call i32 @git_filebuf_cleanup(i32* %3)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i32 @git_index_free(%struct.TYPE_7__* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_repository_free(i32* %32)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(%struct.TYPE_7__**, i32*) #1

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #1

declare dso_local i32 @git_index_write(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local %struct.TYPE_8__* @git_error_last(...) #1

declare dso_local i32 @git_filebuf_cleanup(i32*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_7__*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
