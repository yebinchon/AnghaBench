; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_drop_the_oldest_entry_and_rewrite_the_log_history.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_drop_the_oldest_entry_and_rewrite_the_log_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@entrycount = common dso_local global i32 0, align 4
@g_reflog = common dso_local global i32 0, align 4
@GIT_OID_HEX_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_drop__can_drop_the_oldest_entry_and_rewrite_the_log_history() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @entrycount, align 4
  %3 = icmp sgt i32 %2, 2
  %4 = zext i1 %3 to i32
  %5 = call i32 @cl_assert(i32 %4)
  %6 = load i32, i32* @g_reflog, align 4
  %7 = load i32, i32* @entrycount, align 4
  %8 = sub nsw i32 %7, 1
  %9 = call i32 @git_reflog_drop(i32 %6, i32 %8, i32 1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @entrycount, align 4
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @g_reflog, align 4
  %14 = call i32 @git_reflog_entrycount(i32 %13)
  %15 = call i32 @cl_assert_equal_sz(i32 %12, i32 %14)
  %16 = load i32, i32* @g_reflog, align 4
  %17 = load i32, i32* @entrycount, align 4
  %18 = sub nsw i32 %17, 2
  %19 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32 %16, i32 %18)
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %1, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @GIT_OID_HEX_ZERO, align 4
  %23 = call i64 @git_oid_streq(i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_drop(i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32) #1

declare dso_local %struct.TYPE_3__* @git_reflog_entry_byindex(i32, i32) #1

declare dso_local i64 @git_oid_streq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
