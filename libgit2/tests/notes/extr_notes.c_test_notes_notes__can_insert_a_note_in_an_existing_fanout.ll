; ModuleID = '/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_insert_a_note_in_an_existing_fanout.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/notes/extr_notes.c_test_notes_notes__can_insert_a_note_in_an_existing_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"08b041783f40edfe12bb406c9c9a8a040177c125\00", align 1
@MESSAGES_COUNT = common dso_local global i64 0, align 8
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/notes/fanout\00", align 1
@_sig = common dso_local global i32 0, align 4
@messages = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_notes_notes__can_insert_a_note_in_an_existing_fanout() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  store i64 0, i64* %1, align 8
  br label %7

7:                                                ; preds = %27, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @MESSAGES_COUNT, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load i32, i32* @_repo, align 4
  %13 = load i32, i32* @_sig, align 4
  %14 = load i32, i32* @_sig, align 4
  %15 = load i32*, i32** @messages, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_note_create(i32* %2, i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i32* %3, i32 %18, i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_note_read(i32** %4, i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_note_free(i32* %24)
  %26 = call i32 @git_oid_cpy(i32* %3, i32* %2)
  br label %27

27:                                               ; preds = %11
  %28 = load i64, i64* %1, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %1, align 8
  br label %7

30:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_note_create(i32*, i32, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @git_note_read(i32**, i32, i8*, i32*) #1

declare dso_local i32 @git_note_free(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
