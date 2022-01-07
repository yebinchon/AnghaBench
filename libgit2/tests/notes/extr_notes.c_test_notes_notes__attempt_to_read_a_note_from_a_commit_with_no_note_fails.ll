; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__attempt_to_read_a_note_from_a_commit_with_no_note_fails.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__attempt_to_read_a_note_from_a_commit_with_no_note_fails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@_repo = common dso_local global i32 0, align 4
@_sig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"I decorate 4a20\0A\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__attempt_to_read_a_note_from_a_commit_with_no_note_fails() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @_repo, align 4
  %8 = load i32, i32* @_sig, align 4
  %9 = load i32, i32* @_sig, align 4
  %10 = call i32 @git_note_commit_create(i32* %2, i32* null, i32 %7, i32* null, i32 %8, i32 %9, i32* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @_repo, align 4
  %13 = call i32 @git_commit_lookup(i32** %3, i32 %12, i32* %2)
  %14 = load i32, i32* @_repo, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @_sig, align 4
  %17 = load i32, i32* @_sig, align 4
  %18 = call i32 @git_note_commit_remove(i32* %2, i32 %14, i32* %15, i32 %16, i32 %17, i32* %1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_commit_free(i32* %20)
  %22 = load i32, i32* @_repo, align 4
  %23 = call i32 @git_commit_lookup(i32** %3, i32 %22, i32* %2)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @cl_assert(i32* %24)
  %26 = load i32, i32* @GIT_ENOTFOUND, align 4
  %27 = load i32, i32* @_repo, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_note_commit_read(i32** %4, i32 %27, i32* %28, i32* %1)
  %30 = call i32 @cl_git_fail_with(i32 %26, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_commit_free(i32* %31)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_note_commit_create(i32*, i32*, i32, i32*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_note_commit_remove(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @cl_git_fail_with(i32, i32) #1

declare dso_local i32 @git_note_commit_read(i32**, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
