; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__preserves_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__preserves_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cleanup_myrepo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"myrepo/test.txt\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"hey there\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"myrepo/TEST.txt\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"hello again\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TEST.txt\00", align 1
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__preserves_case() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @cl_set_cleanup(i32* @cleanup_myrepo, i32* null)
  %6 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_repository_index(i32** %2, i32* %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_index_caps(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_index_add_bypath(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @p_rename(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_index_add_bypath(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %0
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @git_index_entrycount(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i32 @cl_assert_equal_i(i32 1, i32 %30)
  br label %37

32:                                               ; preds = %0
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @git_index_entrycount(i32* %33)
  %35 = trunc i64 %34 to i32
  %36 = call i32 @cl_assert_equal_i(i32 2, i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32*, i32** %2, align 8
  %39 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %3, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @cl_assert(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @git__strcmp(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call %struct.TYPE_3__* @git_index_get_bypath(i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %3, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %37
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @git__strcmp(i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @cl_assert(i32 %65)
  br label %75

67:                                               ; preds = %37
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @git__strcmp(i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @cl_assert(i32 %73)
  br label %75

75:                                               ; preds = %67, %59
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_index_free(i32* %76)
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @git_repository_free(i32* %78)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @git_index_caps(i32*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_3__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i64 @git__strcmp(i32, i8*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
