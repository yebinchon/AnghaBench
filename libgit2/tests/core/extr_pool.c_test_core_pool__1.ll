; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_pool.c_test_core_pool__1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_pool.c_test_core_pool__1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_pool__1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = call i32 @git_pool_init(%struct.TYPE_6__* %2, i32 1)
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 4000, i32* %4, align 4
  store i32 2010, i32* %1, align 4
  br label %5

5:                                                ; preds = %14, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = call i32* @git_pool_malloc(%struct.TYPE_6__* %2, i32 %9)
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  br label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %1, align 4
  br label %5

17:                                               ; preds = %5
  %18 = call i32 @git_pool__open_pages(%struct.TYPE_6__* %2)
  %19 = call i32 @cl_assert_equal_i(i32 591, i32 %18)
  %20 = call i32 @git_pool_clear(%struct.TYPE_6__* %2)
  %21 = call i32 @git_pool_init(%struct.TYPE_6__* %2, i32 1)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 4120, i32* %22, align 4
  store i32 2010, i32* %1, align 4
  br label %23

23:                                               ; preds = %32, %17
  %24 = load i32, i32* %1, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %1, align 4
  %28 = call i32* @git_pool_malloc(%struct.TYPE_6__* %2, i32 %27)
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @cl_assert(i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %1, align 4
  br label %23

35:                                               ; preds = %23
  %36 = call i32 @git_pool__open_pages(%struct.TYPE_6__* %2)
  %37 = call i32 @cl_assert_equal_i(i32 575, i32 %36)
  %38 = call i32 @git_pool_clear(%struct.TYPE_6__* %2)
  ret void
}

declare dso_local i32 @git_pool_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32* @git_pool_malloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_pool__open_pages(%struct.TYPE_6__*) #1

declare dso_local i32 @git_pool_clear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
