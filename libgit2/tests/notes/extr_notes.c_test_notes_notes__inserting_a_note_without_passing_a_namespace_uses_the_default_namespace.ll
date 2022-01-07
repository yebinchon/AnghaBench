; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__inserting_a_note_without_passing_a_namespace_uses_the_default_namespace.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__inserting_a_note_without_passing_a_namespace_uses_the_default_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"08b041783f40edfe12bb406c9c9a8a040177c125\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"hello world\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__inserting_a_note_without_passing_a_namespace_uses_the_default_namespace() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @_repo, align 4
  %10 = call i32 @git_note_default_ref(i32* %5, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @create_note(i32* %1, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_note_read(i32** %3, i32 %13, i32* null, i32* %2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @_repo, align 4
  %17 = call i32* @git_buf_cstr(i32* %5)
  %18 = call i32 @git_note_read(i32** %4, i32 %16, i32* %17, i32* %2)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @assert_note_equal(i32* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @assert_note_equal(i32* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %24 = call i32 @git_buf_dispose(i32* %5)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_note_free(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_note_free(i32* %27)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_note_default_ref(i32*, i32) #1

declare dso_local i32 @create_note(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @git_note_read(i32**, i32, i32*, i32*) #1

declare dso_local i32* @git_buf_cstr(i32*) #1

declare dso_local i32 @assert_note_equal(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_note_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
