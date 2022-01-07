; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_persist_deletion_on_disk.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_persist_deletion_on_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@entrycount = common dso_local global i32 0, align 4
@g_reflog = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_drop__can_persist_deletion_on_disk() #0 {
  %1 = load i32, i32* @entrycount, align 4
  %2 = icmp sgt i32 %1, 2
  %3 = zext i1 %2 to i32
  %4 = call i32 @cl_assert(i32 %3)
  %5 = load i32, i32* @g_reflog, align 4
  %6 = call i32 @git_reflog_drop(i32 %5, i32 0, i32 1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @entrycount, align 4
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* @g_reflog, align 4
  %11 = call i32 @git_reflog_entrycount(i32 %10)
  %12 = call i32 @cl_assert_equal_sz(i32 %9, i32 %11)
  %13 = load i32, i32* @g_reflog, align 4
  %14 = call i32 @git_reflog_write(i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_reflog, align 4
  %17 = call i32 @git_reflog_free(i32 %16)
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_reflog_read(i32* @g_reflog, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @entrycount, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @g_reflog, align 4
  %23 = call i32 @git_reflog_entrycount(i32 %22)
  %24 = call i32 @cl_assert_equal_sz(i32 %21, i32 %23)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_drop(i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32) #1

declare dso_local i32 @git_reflog_write(i32) #1

declare dso_local i32 @git_reflog_free(i32) #1

declare dso_local i32 @git_reflog_read(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
