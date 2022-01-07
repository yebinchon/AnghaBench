; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__interleaved_pushes_and_pops.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__interleaved_pushes_and_pops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_core_pqueue__interleaved_pushes_and_pops.commands = internal global [21 x i32] [i32 6, i32 9, i32 8, i32 0, i32 5, i32 0, i32 7, i32 0, i32 4, i32 3, i32 0, i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0, i32 0, i32 -1], align 16
@test_core_pqueue__interleaved_pushes_and_pops.expected = internal global [11 x i32] [i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 4, i32 3, i32 2, i32 1, i32 -1], align 16
@cmp_ints_like_commit_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pqueue__interleaved_pushes_and_pops() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @cmp_ints_like_commit_time, align 4
  %6 = call i32 @git_pqueue_init(i32* %1, i32 0, i32 10, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %41, %0
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [21 x i32], [21 x i32]* @test_core_pqueue__interleaved_pushes_and_pops.commands, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [21 x i32], [21 x i32]* @test_core_pqueue__interleaved_pushes_and_pops.commands, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = call i32* @git_pqueue_pop(i32* %1)
  store i32* %21, i32** %4, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* @test_core_pqueue__interleaved_pushes_and_pops.expected, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %14
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [21 x i32], [21 x i32]* @test_core_pqueue__interleaved_pushes_and_pops.commands, i64 0, i64 %36
  %38 = call i32 @git_pqueue_insert(i32* %1, i32* %37)
  %39 = call i32 @cl_git_pass(i32 %38)
  br label %40

40:                                               ; preds = %34, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %8

44:                                               ; preds = %8
  %45 = call i32 @git_pqueue_size(i32* %1)
  %46 = call i32 @cl_assert_equal_i(i32 0, i32 %45)
  %47 = call i32 @git_pqueue_free(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_pqueue_pop(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_pqueue_insert(i32*, i32*) #1

declare dso_local i32 @git_pqueue_size(i32*) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
