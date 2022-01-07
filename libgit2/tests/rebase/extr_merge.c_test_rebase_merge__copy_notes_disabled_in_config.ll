; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__copy_notes_disabled_in_config.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_merge.c_test_rebase_merge__copy_notes_disabled_in_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"notes.rewrite.rebase\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"notes.rewriteRef\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/notes/test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_merge__copy_notes_disabled_in_config() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @repo, align 4
  %3 = call i32 @git_repository_config(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_config_set_bool(i32* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_config_set_string(i32* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @test_copy_note(i32* null, i32 0)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_config(i32**, i32) #1

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #1

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #1

declare dso_local i32 @test_copy_note(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
