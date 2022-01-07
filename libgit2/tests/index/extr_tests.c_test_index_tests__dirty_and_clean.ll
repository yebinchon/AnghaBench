; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__dirty_and_clean.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__dirty_and_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"./myrepo\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Hi.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__dirty_and_clean() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_repository_index(i32** %2, i32* %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_index_entrycount(i32* %10)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_index_is_dirty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_index_add_from_buffer(i32* %24, %struct.TYPE_5__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_index_entrycount(i32* %27)
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_index_is_dirty(i32* %32)
  %34 = call i32 @cl_assert(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_index_write(i32* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_index_is_dirty(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_index_remove_bypath(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @git_index_entrycount(i32* %47)
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @git_index_is_dirty(i32* %52)
  %54 = call i32 @cl_assert(i32 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_index_write(i32* %55)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @git_index_is_dirty(i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @cl_assert(i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @git_index_read(i32* %64, i32 0)
  %66 = call i32 @cl_git_pass(i32 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @git_index_is_dirty(i32* %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @cl_assert(i32 %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @git_index_add_from_buffer(i32* %73, %struct.TYPE_5__* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %75 = call i32 @cl_git_pass(i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @git_index_entrycount(i32* %76)
  %78 = icmp eq i32 %77, 1
  %79 = zext i1 %78 to i32
  %80 = call i32 @cl_assert(i32 %79)
  %81 = load i32*, i32** %2, align 8
  %82 = call i32 @git_index_is_dirty(i32* %81)
  %83 = call i32 @cl_assert(i32 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @git_index_read(i32* %84, i32 0)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @git_index_is_dirty(i32* %87)
  %89 = call i32 @cl_assert(i32 %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @git_index_read(i32* %90, i32 1)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 @git_index_is_dirty(i32* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @cl_assert(i32 %97)
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @git_index_free(i32* %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_repository_free(i32* %101)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_index_entrycount(i32*) #2

declare dso_local i32 @git_index_is_dirty(i32*) #2

declare dso_local i32 @git_index_add_from_buffer(i32*, %struct.TYPE_5__*, i8*, i32) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_read(i32*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
