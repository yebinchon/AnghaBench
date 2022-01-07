; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__max_heap_size_without_comparison.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__max_heap_size_without_comparison.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PQUEUE_FIXED_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pqueue__max_heap_size_without_comparison() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [100 x i32], align 16
  %4 = bitcast [100 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 400, i1 false)
  %5 = load i32, i32* @GIT_PQUEUE_FIXED_SIZE, align 4
  %6 = call i32 @git_pqueue_init(i32* %1, i32 %5, i32 50, i32* null)
  %7 = call i32 @cl_git_pass(i32 %6)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %17, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %13
  %15 = call i32 @git_pqueue_insert(i32* %1, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %8

20:                                               ; preds = %8
  %21 = call i32 @git_pqueue_size(i32* %1)
  %22 = call i32 @cl_assert_equal_i(i32 50, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %29, %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 50
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = call i32 @git_pqueue_pop(i32* %1)
  %28 = call i32 @cl_assert(i32 %27)
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %23

32:                                               ; preds = %23
  %33 = call i32 @git_pqueue_size(i32* %1)
  %34 = call i32 @cl_assert_equal_i(i32 0, i32 %33)
  %35 = call i32 @git_pqueue_free(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_pqueue_init(i32*, i32, i32, i32*) #2

declare dso_local i32 @git_pqueue_insert(i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_pqueue_size(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_pqueue_pop(i32*) #2

declare dso_local i32 @git_pqueue_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
