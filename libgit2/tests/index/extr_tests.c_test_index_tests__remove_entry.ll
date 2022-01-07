; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__remove_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__remove_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"index_test\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"index_test/hello\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"hello\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__remove_entry() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32 @p_mkdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 504)
  %4 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_repository_index(i32** %2, i32* %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @git_index_entrycount(i32* %9)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_index_write(i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_index_read(i32* %21, i32 1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_entrycount(i32* %24)
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32* @git_index_get_bypath(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @git_index_remove(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_index_write(i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_index_read(i32* %40, i32 1)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_index_entrycount(i32* %43)
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i32* @git_index_get_bypath(i32* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @git_index_free(i32* %53)
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @git_repository_free(i32* %55)
  %57 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_entrycount(i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i32*) #1

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_index_read(i32*, i32) #1

declare dso_local i32* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @git_index_remove(i32*, i8*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @cl_fixture_cleanup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
