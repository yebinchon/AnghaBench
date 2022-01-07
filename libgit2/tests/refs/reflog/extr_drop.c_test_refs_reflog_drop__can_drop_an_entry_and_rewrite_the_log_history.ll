; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_drop_an_entry_and_rewrite_the_log_history.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_drop.c_test_refs_reflog_drop__can_drop_an_entry_and_rewrite_the_log_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@entrycount = common dso_local global i32 0, align 4
@g_reflog = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_drop__can_drop_an_entry_and_rewrite_the_log_history() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @entrycount, align 4
  %6 = icmp sgt i32 %5, 4
  %7 = zext i1 %6 to i32
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load i32, i32* @g_reflog, align 4
  %10 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32 %9, i32 1)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %1, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @git_oid_cpy(i32* %3, i32* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @git_oid_cpy(i32* %4, i32* %15)
  %17 = load i32, i32* @g_reflog, align 4
  %18 = call i32 @git_reflog_drop(i32 %17, i32 1, i32 1)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @entrycount, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @g_reflog, align 4
  %23 = call i32 @git_reflog_entrycount(i32 %22)
  %24 = call i32 @cl_assert_equal_sz(i32 %21, i32 %23)
  %25 = load i32, i32* @g_reflog, align 4
  %26 = call %struct.TYPE_3__* @git_reflog_entry_byindex(i32 %25, i32 0)
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %2, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i64 @git_oid_cmp(i32* %3, i32* %28)
  %30 = call i32 @cl_assert_equal_i(i32 0, i64 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i64 @git_oid_cmp(i32* %4, i32* %32)
  %34 = icmp ne i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_3__* @git_reflog_entry_byindex(i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reflog_drop(i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
