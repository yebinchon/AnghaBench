; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__change_icase_on_instance.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__change_icase_on_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@TEST_INDEX_PATH = common dso_local global i32 0, align 4
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"src/common.h\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SRC/Common.h\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"COPYING\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"copying\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__change_icase_on_instance() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = load i32, i32* @TEST_INDEX_PATH, align 4
  %5 = call i32 @git_index_open(%struct.TYPE_12__** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = call i32 @git_vector_verify_sorted(i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %12 = call i32 @git_index_caps(%struct.TYPE_12__* %11)
  store i32 %12, i32* %2, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %14 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = call i32 @git_index_set_caps(%struct.TYPE_12__* %13, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cl_assert_equal_i(i32 0, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = call i32 @git_vector_verify_sorted(i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %29 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %3, align 8
  %30 = call i32 @cl_assert(%struct.TYPE_11__* %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %32 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %3, align 8
  %33 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %35 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %3, align 8
  %36 = call i32 @cl_assert(%struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %38 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %3, align 8
  %39 = call i32 @cl_assert_equal_p(i32* null, %struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @git_index_set_caps(%struct.TYPE_12__* %40, i32 %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 1, i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = call i32 @git_vector_verify_sorted(i32* %51)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %55 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %3, align 8
  %56 = call i32 @cl_assert(%struct.TYPE_11__* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %62 = call %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %3, align 8
  %63 = call i32 @cl_assert(%struct.TYPE_11__* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %69 = call i32 @git_index_free(%struct.TYPE_12__* %68)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @git_vector_verify_sorted(i32*) #1

declare dso_local i32 @git_index_caps(%struct.TYPE_12__*) #1

declare dso_local i32 @git_index_set_caps(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @git_index_get_bypath(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_p(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_index_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
