; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__remove_directory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__remove_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"index_test\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"index_test/a\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"index_test/a/1.txt\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"index_test/a/2.txt\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"index_test/a/3.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"index_test/b.txt\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"a/1.txt\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"a/2.txt\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"a/3.txt\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"b.txt\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__remove_directory() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 504)
  %4 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_repository_index(i32** %2, i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @git_index_entrycount(i32* %9)
  %11 = trunc i64 %10 to i32
  %12 = call i32 @cl_assert_equal_i(i32 0, i32 %11)
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 504)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %16 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_index_add_bypath(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_add_bypath(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_add_bypath(i32* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_index_add_bypath(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @git_index_write(i32* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_index_read(i32* %33, i32 1)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @git_index_entrycount(i32* %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @cl_assert_equal_i(i32 4, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32* @git_index_get_bypath(i32* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32* @git_index_get_bypath(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @cl_assert(i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32* @git_index_get_bypath(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %52 = icmp ne i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_index_remove(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_index_write(i32* %58)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @git_index_read(i32* %61, i32 1)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i64 @git_index_entrycount(i32* %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @cl_assert_equal_i(i32 3, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32* @git_index_get_bypath(i32* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32* @git_index_get_bypath(i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %75 = icmp ne i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @cl_assert(i32 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32* @git_index_get_bypath(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %80 = icmp ne i32* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @git_index_remove_directory(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %85 = call i32 @cl_git_pass(i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @git_index_write(i32* %86)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @git_index_read(i32* %89, i32 1)
  %91 = call i32 @cl_git_pass(i32 %90)
  %92 = load i32*, i32** %2, align 8
  %93 = call i64 @git_index_entrycount(i32* %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 @cl_assert_equal_i(i32 1, i32 %94)
  %96 = load i32*, i32** %2, align 8
  %97 = call i32* @git_index_get_bypath(i32* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %98 = icmp eq i32* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i32 @cl_assert(i32 %99)
  %101 = load i32*, i32** %2, align 8
  %102 = call i32* @git_index_get_bypath(i32* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %103 = icmp eq i32* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @cl_assert(i32 %104)
  %106 = load i32*, i32** %2, align 8
  %107 = call i32* @git_index_get_bypath(i32* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %108 = icmp ne i32* %107, null
  %109 = zext i1 %108 to i32
  %110 = call i32 @cl_assert(i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = call i32 @git_index_free(i32* %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @git_repository_free(i32* %113)
  %115 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_read(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #1

declare dso_local i32 @git_index_remove_directory(i32*, i8*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
