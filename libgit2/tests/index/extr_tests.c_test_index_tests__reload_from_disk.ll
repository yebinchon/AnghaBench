; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__reload_from_disk.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__reload_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@cleanup_myrepo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"./myrepo/a.txt\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"./myrepo/b.txt\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"a.txt\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"b.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__reload_from_disk() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %5 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %6 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 511, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_repository_index(%struct.TYPE_9__** %3, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_i(i32 0, i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @git_index_open(%struct.TYPE_9__** %2, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cl_assert_equal_i(i32 0, i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i32 @git_index_add_bypath(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = call i32 @git_index_add_bypath(%struct.TYPE_9__* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %35 = call i32 @git_index_entrycount(%struct.TYPE_9__* %34)
  %36 = call i32 @cl_assert_equal_sz(i32 2, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @git_index_write(%struct.TYPE_9__* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cl_assert_equal_i(i32 1, i32 %42)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = call i32 @git_index_entrycount(%struct.TYPE_9__* %44)
  %46 = call i32 @cl_assert_equal_sz(i32 0, i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = call i32 @git_index_read(%struct.TYPE_9__* %47, i32 1)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_i(i32 1, i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = call i32 @git_index_entrycount(%struct.TYPE_9__* %54)
  %56 = call i32 @cl_assert_equal_sz(i32 2, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @p_unlink(i32 %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %63 = call i32 @git_index_read(%struct.TYPE_9__* %62, i32 1)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cl_assert_equal_i(i32 0, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = call i32 @git_index_entrycount(%struct.TYPE_9__* %69)
  %71 = call i32 @cl_assert_equal_sz(i32 0, i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = call i32 @git_index_free(%struct.TYPE_9__* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @git_index_free(%struct.TYPE_9__* %74)
  %76 = load i32*, i32** %1, align 8
  %77 = call i32 @git_repository_free(i32* %76)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(%struct.TYPE_9__**, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @git_index_add_bypath(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_index_entrycount(%struct.TYPE_9__*) #1

declare dso_local i32 @git_index_write(%struct.TYPE_9__*) #1

declare dso_local i32 @git_index_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @git_index_free(%struct.TYPE_9__*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
