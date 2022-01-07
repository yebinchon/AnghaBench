; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__do_not_append_when_no_update.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_reflog.c_test_refs_reflog_reflog__do_not_append_when_no_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_reflog__do_not_append_when_no_update() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_reflog_read(i32** %5, i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @git_reflog_entrycount(i32* %9)
  store i64 %10, i64* %1, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @git_reflog_free(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_reference_lookup(i32** %3, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @git_reference_target(i32* %17)
  %19 = call i32 @git_reference_create(i32** %4, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 1, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_reference_free(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @git_reference_free(i32* %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = call i32 @git_reflog_read(i32** %5, i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @git_reflog_entrycount(i32* %28)
  store i64 %29, i64* %2, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @git_reflog_free(i32* %30)
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @cl_assert_equal_i(i64 %32, i64 %33)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
