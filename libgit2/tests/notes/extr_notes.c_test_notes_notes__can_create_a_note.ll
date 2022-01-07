; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_create_a_note.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_create_a_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.note_create_payload = type { i8*, i8*, i32, i32 }

@test_notes_notes__can_create_a_note.can_create_a_note = internal global [2 x %struct.note_create_payload] [%struct.note_create_payload { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0 }, %struct.note_create_payload zeroinitializer], align 16
@.str = private unnamed_addr constant [41 x i8] c"1c9b1bc36730582a42d56eeee0dc58673d7ae869\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"4a202b346bb0fb0db7eff3cffeb3c70babbd2045\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"refs/notes/i-can-see-dead-notes\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"I decorate 4a20\0A\00", align 1
@_repo = common dso_local global i32 0, align 4
@note_list_create_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__can_create_a_note() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds ([2 x %struct.note_create_payload], [2 x %struct.note_create_payload]* @test_notes_notes__can_create_a_note.can_create_a_note, i64 0, i64 0, i32 2), align 16
  %3 = call i32 @create_note(i32* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %4 = load i32, i32* @_repo, align 4
  %5 = load i32, i32* @note_list_create_cb, align 4
  %6 = call i32 @git_note_foreach(i32 %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %5, %struct.note_create_payload** bitcast ([2 x %struct.note_create_payload]* @test_notes_notes__can_create_a_note.can_create_a_note to %struct.note_create_payload**))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @assert_notes_seen(%struct.note_create_payload* getelementptr inbounds ([2 x %struct.note_create_payload], [2 x %struct.note_create_payload]* @test_notes_notes__can_create_a_note.can_create_a_note, i64 0, i64 0), i32 1)
  ret void
}

declare dso_local i32 @create_note(i32*, i8*, i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_note_foreach(i32, i8*, i32, %struct.note_create_payload**) #1

declare dso_local i32 @assert_notes_seen(%struct.note_create_payload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
