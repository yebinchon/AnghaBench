; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__reading_clears_uptodate_bit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__reading_clears_uptodate_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@GIT_INDEX_ENTRY_UPTODATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_racy__reading_clears_uptodate_bit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = call i32 (...) @setup_uptodate_files()
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_index(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_index_write(i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_index_read(i32* %10, i32 1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call %struct.TYPE_4__* @git_index_get_bypath(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %2, align 8
  %15 = call i32 @cl_assert(%struct.TYPE_4__* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GIT_INDEX_ENTRY_UPTODATE, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @cl_assert_equal_i(i32 0, i32 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call %struct.TYPE_4__* @git_index_get_bypath(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %2, align 8
  %24 = call i32 @cl_assert(%struct.TYPE_4__* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GIT_INDEX_ENTRY_UPTODATE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @cl_assert_equal_i(i32 0, i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call %struct.TYPE_4__* @git_index_get_bypath(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %2, align 8
  %33 = call i32 @cl_assert(%struct.TYPE_4__* %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GIT_INDEX_ENTRY_UPTODATE, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @cl_assert_equal_i(i32 0, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_index_free(i32* %40)
  ret void
}

declare dso_local i32 @setup_uptodate_files(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_read(i32*, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
