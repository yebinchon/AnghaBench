; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__creating_a_note_on_a_target_can_overwrite_existing_note.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__creating_a_note_on_a_target_can_overwrite_existing_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"08b041783f40edfe12bb406c9c9a8a040177c125\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"hello old world\0A\00", align 1
@_repo = common dso_local global i32 0, align 4
@_sig = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hello new world\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"refs/notes/some/namespace\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"hello new ref world\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__creating_a_note_on_a_target_can_overwrite_existing_note() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @create_note(i32* %1, i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @_repo, align 4
  %9 = load i32, i32* @_sig, align 4
  %10 = load i32, i32* @_sig, align 4
  %11 = call i32 @git_note_create(i32* %1, i32 %8, i8* null, i32 %9, i32 %10, i32* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_note_read(i32** %3, i32 %13, i8* null, i32* %2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @assert_note_equal(i32* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %18 = call i32 @create_note(i32* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @_repo, align 4
  %20 = load i32, i32* @_sig, align 4
  %21 = load i32, i32* @_sig, align 4
  %22 = call i32 @git_note_create(i32* %1, i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %21, i32* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @_repo, align 4
  %25 = call i32 @git_note_read(i32** %4, i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %2)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @assert_note_equal(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_note_free(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_note_free(i32* %31)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @create_note(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @git_note_create(i32*, i32, i8*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @git_note_read(i32**, i32, i8*, i32*) #1

declare dso_local i32 @assert_note_equal(i32*, i8*, i32*) #1

declare dso_local i32 @git_note_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
