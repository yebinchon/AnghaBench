; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__reload_while_ignoring_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__reload_while_ignoring_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@TEST_INDEX_PATH = common dso_local global i32 0, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".HEADER\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".header\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__reload_while_ignoring_case() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TEST_INDEX_PATH, align 4
  %4 = call i32 @git_index_open(%struct.TYPE_8__** %1, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @git_vector_verify_sorted(i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %11 = call i32 @git_index_caps(%struct.TYPE_8__* %10)
  store i32 %11, i32* %2, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = call i32 @git_index_set_caps(%struct.TYPE_8__* %12, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %20 = call i32 @git_index_read(%struct.TYPE_8__* %19, i32 1)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @git_vector_verify_sorted(i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %27 = call i32 @git_index_get_bypath(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %30 = call i32 @git_index_get_bypath(%struct.TYPE_8__* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %31 = call i32 @cl_assert_equal_p(i32* null, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @git_index_set_caps(%struct.TYPE_8__* %32, i32 %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %39 = call i32 @git_index_read(%struct.TYPE_8__* %38, i32 1)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = call i32 @git_vector_verify_sorted(i32* %42)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %46 = call i32 @git_index_get_bypath(%struct.TYPE_8__* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %49 = call i32 @git_index_get_bypath(%struct.TYPE_8__* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %52 = call i32 @git_index_free(%struct.TYPE_8__* %51)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_8__**, i32) #1

declare dso_local i32 @git_vector_verify_sorted(i32*) #1

declare dso_local i32 @git_index_caps(%struct.TYPE_8__*) #1

declare dso_local i32 @git_index_set_caps(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @git_index_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_get_bypath(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_p(i32*, i32) #1

declare dso_local i32 @git_index_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
