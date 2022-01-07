; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__remove_all_conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_conflicts.c_test_index_conflicts__remove_all_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_conflicts__remove_all_conflicts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @repo_index, align 4
  %4 = call i64 @git_index_entrycount(i32 %3)
  %5 = icmp eq i64 %4, 8
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load i32, i32* @repo_index, align 4
  %9 = call i32 @git_index_has_conflicts(i32 %8)
  %10 = call i32 @cl_assert_equal_i(i32 1, i32 %9)
  %11 = load i32, i32* @repo_index, align 4
  %12 = call i32 @git_index_conflict_cleanup(i32 %11)
  %13 = load i32, i32* @repo_index, align 4
  %14 = call i32 @git_index_has_conflicts(i32 %13)
  %15 = call i32 @cl_assert_equal_i(i32 0, i32 %14)
  %16 = load i32, i32* @repo_index, align 4
  %17 = call i64 @git_index_entrycount(i32 %16)
  %18 = icmp eq i64 %17, 2
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  store i64 0, i64* %1, align 8
  br label %21

21:                                               ; preds = %38, %0
  %22 = load i64, i64* %1, align 8
  %23 = load i32, i32* @repo_index, align 4
  %24 = call i64 @git_index_entrycount(i32 %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load i32, i32* @repo_index, align 4
  %28 = load i64, i64* %1, align 8
  %29 = call i32* @git_index_get_byindex(i32 %27, i64 %28)
  store i32* %29, i32** %2, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_index_entry_is_conflict(i32* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i64, i64* %1, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %1, align 8
  br label %21

41:                                               ; preds = %21
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_index_entrycount(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_has_conflicts(i32) #1

declare dso_local i32 @git_index_conflict_cleanup(i32) #1

declare dso_local i32* @git_index_get_byindex(i32, i64) #1

declare dso_local i32 @git_index_entry_is_conflict(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
