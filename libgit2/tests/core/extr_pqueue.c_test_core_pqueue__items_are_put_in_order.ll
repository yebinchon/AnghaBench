; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__items_are_put_in_order.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__items_are_put_in_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmp_ints = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pqueue__items_are_put_in_order() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [20 x i32], align 16
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @cmp_ints, align 4
  %6 = call i32 @git_pqueue_init(i32* %1, i32 0, i32 20, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %32, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 20
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 10
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sub nsw i32 10, %15
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %18
  store i32 %16, i32* %19, align 4
  br label %26

20:                                               ; preds = %11
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 %28
  %30 = call i32 @git_pqueue_insert(i32* %1, i32* %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %8

35:                                               ; preds = %8
  %36 = call i32 @git_pqueue_size(i32* %1)
  %37 = call i32 @cl_assert_equal_i(i32 20, i32 %36)
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i32, i32* %2, align 4
  %40 = icmp sle i32 %39, 20
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = call i8* @git_pqueue_pop(i32* %1)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @cl_assert(i8* %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cl_assert_equal_i(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %38

53:                                               ; preds = %38
  %54 = call i32 @git_pqueue_size(i32* %1)
  %55 = call i32 @cl_assert_equal_i(i32 0, i32 %54)
  %56 = call i32 @git_pqueue_free(i32* %1)
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
