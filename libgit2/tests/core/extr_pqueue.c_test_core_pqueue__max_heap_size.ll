; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__max_heap_size.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__max_heap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PQUEUE_FIXED_SIZE = common dso_local global i32 0, align 4
@cmp_ints = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pqueue__max_heap_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [100 x i32], align 16
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @GIT_PQUEUE_FIXED_SIZE, align 4
  %6 = load i32, i32* @cmp_ints, align 4
  %7 = call i32 @git_pqueue_init(i32* %1, i32 %5, i32 50, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %31, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 100, %17
  br label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %18, %16 ], [ %20, %19 ]
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %27
  %29 = call i32 @git_pqueue_insert(i32* %1, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %9

34:                                               ; preds = %9
  %35 = call i32 @git_pqueue_size(i32* %1)
  %36 = call i32 @cl_assert_equal_i(i32 50, i32 %35)
  store i32 50, i32* %2, align 4
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 100
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = call i8* @git_pqueue_pop(i32* %1)
  store i8* %41, i8** %4, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @cl_assert(i8* %42)
  %44 = load i32, i32* %2, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cl_assert_equal_i(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %37

52:                                               ; preds = %37
  %53 = call i32 @git_pqueue_size(i32* %1)
  %54 = call i32 @cl_assert_equal_i(i32 0, i32 %53)
  %55 = call i32 @git_pqueue_free(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @git_pqueue_insert(i32*, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_pqueue_size(i32*) #1

declare dso_local i8* @git_pqueue_pop(i32*) #1

declare dso_local i32 @cl_assert(i8*) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
