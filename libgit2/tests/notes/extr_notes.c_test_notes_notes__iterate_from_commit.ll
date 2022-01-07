; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__iterate_from_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__iterate_from_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"I decorate a65f\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"I decorate c478\0A\00", align 1
@__const.test_notes_notes__iterate_from_commit.note_message = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@_repo = common dso_local global i32 0, align 4
@_sig = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__iterate_from_commit() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32*], align 16
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.test_notes_notes__iterate_from_commit.note_message to i8*), i64 16, i1 false)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = call i32 @git_oid_fromstr(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %16 = call i32 @git_oid_fromstr(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* @_repo, align 4
  %20 = load i32, i32* @_sig, align 4
  %21 = load i32, i32* @_sig, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %24 = load i8*, i8** %23, align 16
  %25 = call i32 @git_note_commit_create(i32* %18, i32* null, i32 %19, i32* null, i32 %20, i32 %21, i32* %22, i8* %24, i32 0)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %28 = load i32, i32* @_repo, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %30 = call i32 @git_commit_lookup(i32** %27, i32 %28, i32* %29)
  %31 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %32 = load i32*, i32** %31, align 16
  %33 = call i32 @cl_assert(i32* %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %35 = load i32, i32* @_repo, align 4
  %36 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %37 = load i32*, i32** %36, align 16
  %38 = load i32, i32* @_sig, align 4
  %39 = load i32, i32* @_sig, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @git_note_commit_create(i32* %34, i32* null, i32 %35, i32* %37, i32 %38, i32 %39, i32* %40, i8* %42, i32 0)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %46 = load i32, i32* @_repo, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %48 = call i32 @git_commit_lookup(i32** %45, i32 %46, i32* %47)
  %49 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @cl_assert(i32* %50)
  %52 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @git_note_commit_iterator_new(i32** %1, i32* %53)
  %55 = call i32 @cl_git_pass(i32 %54)
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %75, %0
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @git_note_next(i32* %3, i32* %4, i32* %57)
  store i32 %58, i32* %10, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* @_repo, align 4
  %62 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @git_note_commit_read(i32** %2, i32 %61, i32* %63, i32* %4)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @git_note_message(i32* %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cl_assert_equal_s(i32 %67, i8* %71)
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @git_note_free(i32* %73)
  br label %75

75:                                               ; preds = %60
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load i32, i32* @GIT_ITEROVER, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cl_assert_equal_i(i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @cl_assert_equal_i(i32 2, i32 %82)
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @git_note_iterator_free(i32* %84)
  %86 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %87 = load i32*, i32** %86, align 16
  %88 = call i32 @git_commit_free(i32* %87)
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @git_commit_free(i32* %90)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_note_commit_create(i32*, i32*, i32, i32*, i32, i32, i32*, i8*, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @cl_assert(i32*) #2

declare dso_local i32 @git_note_commit_iterator_new(i32**, i32*) #2

declare dso_local i32 @git_note_next(i32*, i32*, i32*) #2

declare dso_local i32 @git_note_commit_read(i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_note_message(i32*) #2

declare dso_local i32 @git_note_free(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_note_iterator_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
