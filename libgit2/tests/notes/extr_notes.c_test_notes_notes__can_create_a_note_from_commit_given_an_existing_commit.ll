; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.note_create_payload = type { i8*, i8*, i32 }

@test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit.can_create_a_note_from_commit_given_an_existing_commit = internal global [3 x %struct.note_create_payload] [%struct.note_create_payload { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 0 }, %struct.note_create_payload { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 0 }, %struct.note_create_payload zeroinitializer], align 16
@.str = private unnamed_addr constant [41 x i8] c"1c9b1bc36730582a42d56eeee0dc58673d7ae869\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"1aaf94147c21f981e0a20bf57b89137c5a6aae52\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"9fd738e8f7967c078dceed8190330fc8648ee56a\00", align 1
@_repo = common dso_local global i32 0, align 4
@_sig = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"I decorate 4a20\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"I decorate 9fd7\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"refs/notes/i-can-see-dead-notes\00", align 1
@note_list_create_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @_repo, align 4
  %8 = load i32, i32* @_sig, align 4
  %9 = load i32, i32* @_sig, align 4
  %10 = call i32 @git_note_commit_create(i32* %2, i32* null, i32 %7, i32* null, i32 %8, i32 %9, i32* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @git_commit_lookup(i32** %3, i32 %14, i32* %2)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @cl_assert(i32* %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @_sig, align 4
  %21 = load i32, i32* @_sig, align 4
  %22 = call i32 @git_note_commit_create(i32* %2, i32* null, i32 %18, i32* %19, i32 %20, i32 %21, i32* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @_repo, align 4
  %25 = call i32 @git_reference_create(i32** %4, i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32* %2, i32 0, i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @_repo, align 4
  %28 = load i32, i32* @note_list_create_cb, align 4
  %29 = call i32 @git_note_foreach(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %28, %struct.note_create_payload** bitcast ([3 x %struct.note_create_payload]* @test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit.can_create_a_note_from_commit_given_an_existing_commit to %struct.note_create_payload**))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @assert_notes_seen(%struct.note_create_payload* getelementptr inbounds ([3 x %struct.note_create_payload], [3 x %struct.note_create_payload]* @test_notes_notes__can_create_a_note_from_commit_given_an_existing_commit.can_create_a_note_from_commit_given_an_existing_commit, i64 0, i64 0), i32 2)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_commit_free(i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @git_reference_free(i32* %34)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_note_commit_create(i32*, i32*, i32, i32*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32*, i32, i32*) #1

declare dso_local i32 @git_note_foreach(i32, i8*, i32, %struct.note_create_payload**) #1

declare dso_local i32 @assert_notes_seen(%struct.note_create_payload*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
