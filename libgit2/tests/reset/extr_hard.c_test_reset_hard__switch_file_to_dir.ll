; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__switch_file_to_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__switch_file_to_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dir/FILE\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_hard__switch_file_to_dir() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_repository_odb(i32** %3, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %18 = call i32 @git_odb_write(i32* %15, i32* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_odb_free(i32* %20)
  %22 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = call i32 @git_index_new(i32** %2)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_signature_now(i32** %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %28, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_index_add(i32* %29, %struct.TYPE_5__* %1)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %32, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_index_add(i32* %33, %struct.TYPE_5__* %1)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @repo, align 4
  %38 = call i32 @git_index_write_tree_to(i32* %7, i32* %36, i32 %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_index_clear(i32* %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = call i32 @git_tree_lookup(i32** %5, i32 %43, i32* %7)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @repo, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_commit_create(i32* %9, i32 %46, i32* null, i32* %47, i32* %48, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %49, i32 0, i32* null)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_tree_free(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @git_index_add(i32* %55, %struct.TYPE_5__* %1)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %58, align 8
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_index_add(i32* %59, %struct.TYPE_5__* %1)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @repo, align 4
  %64 = call i32 @git_index_write_tree_to(i32* %8, i32* %62, i32 %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32, i32* @repo, align 4
  %67 = call i32 @git_tree_lookup(i32** %5, i32 %66, i32* %8)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = load i32, i32* @repo, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @git_commit_create(i32* %10, i32 %69, i32* null, i32* %70, i32* %71, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %72, i32 0, i32* null)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @git_tree_free(i32* %75)
  %77 = load i32*, i32** %2, align 8
  %78 = call i32 @git_index_free(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @git_signature_free(i32* %79)
  %81 = load i32, i32* @repo, align 4
  %82 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %83 = call i32 @git_object_lookup(i32** %4, i32 %81, i32* %9, i32 %82)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = load i32, i32* @repo, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* @GIT_RESET_HARD, align 4
  %88 = call i32 @git_reset(i32 %85, i32* %86, i32 %87, i32* null)
  %89 = call i32 @cl_git_pass(i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @git_object_free(i32* %90)
  %92 = load i32, i32* @repo, align 4
  %93 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %94 = call i32 @git_object_lookup(i32** %4, i32 %92, i32* %10, i32 %93)
  %95 = call i32 @cl_git_pass(i32 %94)
  %96 = load i32, i32* @repo, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @GIT_RESET_HARD, align 4
  %99 = call i32 @git_reset(i32 %96, i32* %97, i32 %98, i32* null)
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @git_object_free(i32* %101)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_odb(i32**, i32) #2

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_odb_free(i32*) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #2

declare dso_local i32 @git_index_clear(i32*) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_create(i32*, i32, i32*, i32*, i32*, i32*, i8*, i32*, i32, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_signature_free(i32*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
