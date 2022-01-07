; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_remove_a_note_from_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_remove_a_note_from_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@_repo = common dso_local global i32 0, align 4
@_sig = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"I decorate 4a20\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"refs/notes/i-can-see-dead-notes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__can_remove_a_note_from_commit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* null, i32** %3, align 8
  %6 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = load i32, i32* @_sig, align 4
  %10 = load i32, i32* @_sig, align 4
  %11 = call i32 @git_note_commit_create(i32* %2, i32* null, i32 %8, i32* null, i32 %9, i32 %10, i32* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_commit_lookup(i32** %4, i32 %13, i32* %2)
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @cl_assert(i32* %15)
  %17 = load i32, i32* @_repo, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @_sig, align 4
  %20 = load i32, i32* @_sig, align 4
  %21 = call i32 @git_note_commit_remove(i32* %2, i32 %17, i32* %18, i32 %19, i32 %20, i32* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @_repo, align 4
  %24 = call i32 @git_reference_create(i32** %5, i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32* %2, i32 0, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @_repo, align 4
  %27 = call i32 @git_note_read(i32** %3, i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %28 = call i32 @cl_git_fail(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_commit_free(i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_note_free(i32* %33)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_note_commit_create(i32*, i32*, i32, i32*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @git_note_commit_remove(i32*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_note_read(i32**, i32, i8*, i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_note_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
