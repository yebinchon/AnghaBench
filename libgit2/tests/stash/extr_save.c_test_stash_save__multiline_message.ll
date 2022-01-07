; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__multiline_message.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_save.c_test_stash_save__multiline_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"This\0A\0Ais a multiline message\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/stash@{0}\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@stash_tip_oid = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"refs/stash\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"On master: This  is a multiline message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_save__multiline_message() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %5 = call i32 @assert_object_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %4)
  %6 = load i32, i32* @repo, align 4
  %7 = load i32, i32* @signature, align 4
  %8 = load i8*, i8** %1, align 8
  %9 = load i32, i32* @GIT_STASH_DEFAULT, align 4
  %10 = call i32 @git_stash_save(i32* @stash_tip_oid, i32 %6, i32 %7, i8* %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = call i32 @git_reflog_read(i32** %3, i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @git_reflog_entry_byindex(i32* %15, i32 0)
  store i32* %16, i32** %2, align 8
  %17 = call i32 @cl_assert(i32* %16)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @git_reflog_entry_message(i32* %18)
  %20 = call i32 @cl_assert_equal_s(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32* @git_oid_tostr_s(i32* @stash_tip_oid)
  %22 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %23 = call i32 @assert_object_oid(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 %22)
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @assert_commit_message_contains(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_reflog_free(i32* %26)
  ret void
}

declare dso_local i32 @assert_object_oid(i8*, i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32* @git_oid_tostr_s(i32*) #1

declare dso_local i32 @assert_commit_message_contains(i8*, i8*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
