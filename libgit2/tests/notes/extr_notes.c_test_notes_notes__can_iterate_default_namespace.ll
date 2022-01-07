; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_iterate_default_namespace.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_iterate_default_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"I decorate a65f\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"I decorate c478\0A\00", align 1
@__const.test_notes_notes__can_iterate_default_namespace.note_message = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [19 x i8] c"refs/notes/commits\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"c47800c7266a2be04c571c04d5a6614691ea99bd\00", align 1
@_repo = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__can_iterate_default_namespace() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([2 x i8*]* @__const.test_notes_notes__can_iterate_default_namespace.note_message to i8*), i64 16, i1 false)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %12 = load i8*, i8** %11, align 16
  %13 = call i32 @create_note(i32* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @create_note(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = call i32 @git_note_iterator_new(i32** %1, i32 %18, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %38, %0
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_note_next(i32* %3, i32* %4, i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i32, i32* @_repo, align 4
  %27 = call i32 @git_note_read(i32** %2, i32 %26, i32* null, i32* %4)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_note_message(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @cl_assert_equal_s(i32 %30, i8* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_note_free(i32* %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* @GIT_ITEROVER, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @cl_assert_equal_i(i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cl_assert_equal_i(i32 2, i32 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @git_note_iterator_free(i32* %47)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_note(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_note_iterator_new(i32**, i32, i32*) #2

declare dso_local i32 @git_note_next(i32*, i32*, i32*) #2

declare dso_local i32 @git_note_read(i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_note_message(i32*) #2

declare dso_local i32 @git_note_free(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_note_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
