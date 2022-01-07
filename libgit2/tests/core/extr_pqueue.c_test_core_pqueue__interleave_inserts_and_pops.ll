; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__interleave_inserts_and_pops.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pqueue.c_test_core_pqueue__interleave_inserts_and_pops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmp_ints = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pqueue__interleave_inserts_and_pops() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [200 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = load i32, i32* @cmp_ints, align 4
  %8 = call i32 @git_pqueue_init(i32* %1, i32 0, i32 20, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  store i32 0, i32* %3, align 4
  store i32 20, i32* %2, align 4
  br label %10

10:                                               ; preds = %50, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp sle i32 %11, 200
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 200, %23
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [200 x i32], [200 x i32]* %5, i64 0, i64 %33
  %35 = call i32 @git_pqueue_insert(i32* %1, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %14

40:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %46, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = call i8* @git_pqueue_pop(i32* %1)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %41

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 20
  store i32 %52, i32* %2, align 4
  br label %10

53:                                               ; preds = %10
  %54 = call i32 @git_pqueue_size(i32* %1)
  %55 = call i32 @cl_assert_equal_i(i32 100, i32 %54)
  store i32 100, i32* %3, align 4
  br label %56

56:                                               ; preds = %68, %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 200
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = call i8* @git_pqueue_pop(i32* %1)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @cl_assert(i8* %61)
  %63 = load i32, i32* %3, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = bitcast i8* %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cl_assert_equal_i(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %56

71:                                               ; preds = %56
  %72 = call i32 @git_pqueue_size(i32* %1)
  %73 = call i32 @cl_assert_equal_i(i32 0, i32 %72)
  %74 = call i32 @git_pqueue_free(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @git_pqueue_insert(i32*, i32*) #1

declare dso_local i8* @git_pqueue_pop(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_pqueue_size(i32*) #1

declare dso_local i32 @cl_assert(i8*) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
